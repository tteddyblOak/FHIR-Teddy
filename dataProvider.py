import requests
import random
import faker

# Initialize faker for realistic names, emails, phone numbers, addresses
fake = faker.Faker()

FHIR_URL = "http://localhost:8080/fhir/Patient/"

def generate_patient():
    genders = ["male", "female", "other", "unknown"]
    marital_statuses = ["A", "D", "M", "W", "S"]  # Annulled, Divorced, Married, Widowed, Single

    patient = {
        "resourceType": "Patient",
        "name": [
            {
                "family": fake.last_name(),
                "given": [fake.first_name()]
            }
        ],
        "telecom": [
            {
                "system": "phone",
                "value": fake.phone_number()
            },
            {
                "system": "email",
                "value": fake.email()
            }
        ],
        "gender": random.choice(genders),
        "birthDate": str(fake.date_of_birth(minimum_age=0, maximum_age=90)),
        "address": [
            {
                "line": [fake.building_number(), fake.street_name()],
                "city": fake.city(),
                "district": fake.city_suffix(),
                "state": fake.state(),
                "country": fake.country()
            }
        ],
        "maritalStatus": {
            "coding": [
                {
                    "system": "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
                    "code": random.choice(marital_statuses)
                }
            ]
        }
    }

    return patient


def create_patients(n=100):
    for i in range(n):
        patient = generate_patient()
        response = requests.post(FHIR_URL, json=patient)
        if response.status_code in [200, 201]:
            print(f"[{i+1}] Patient created successfully")
        else:
            print(f"[{i+1}] Failed: {response.status_code}, {response.text}")


if __name__ == "__main__":
    create_patients(100)
