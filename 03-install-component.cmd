cd /D "%~dp0"

helm upgrade --install ctk -n components --create-namespace oda-canvas/compliance-test-kit/BDD-and-TDD/testData/productcatalog-v1beta2
