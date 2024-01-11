cd /D "%~dp0"

helm upgrade --install ctk -n components oda-canvas/compliance-test-kit/BDD-and-TDD/testData/productcatalog-v1beta2
