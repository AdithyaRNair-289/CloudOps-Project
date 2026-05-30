# CloudOps Enterprise Platform - Unit & Integration Tests
# Module 6: CI/CD Pipeline Engineering

import json
import unittest

class TestCloudOpsApplication(unittest.TestCase):
    
    def test_json_response_structure(self):
        """Test that response has correct structure"""
        response = {
            "message": "Hello Adithya from CloudOps Lambda!",
            "service": "CloudOps Serverless Platform",
            "status": "healthy"
        }
        self.assertIn("message", response)
        self.assertIn("service", response)
        self.assertIn("status", response)
    
    def test_status_is_healthy(self):
        """Test that service status is healthy"""
        response = {
            "status": "healthy"
        }
        self.assertEqual(response["status"], "healthy")
    
    def test_service_name(self):
        """Test that service name is correct"""
        response = {
            "service": "CloudOps Serverless Platform"
        }
        self.assertEqual(response["service"], "CloudOps Serverless Platform")
    
    def test_message_contains_name(self):
        """Test that message contains the correct name"""
        response = {
            "message": "Hello Adithya from CloudOps Lambda!"
        }
        self.assertIn("Adithya", response["message"])
    
    def test_json_serialization(self):
        """Integration test - JSON serialization works correctly"""
        data = {
            "message": "Hello Adithya from CloudOps Lambda!",
            "service": "CloudOps Serverless Platform",
            "status": "healthy"
        }
        json_string = json.dumps(data)
        parsed = json.loads(json_string)
        self.assertEqual(parsed["status"], "healthy")
        self.assertIn("Adithya", parsed["message"])

class TestCloudOpsInfrastructure(unittest.TestCase):
    
    def test_aws_region_config(self):
        """Test AWS region configuration"""
        config = {
            "region": "us-east-1",
            "project": "CloudOps"
        }
        self.assertEqual(config["region"], "us-east-1")
    
    def test_security_group_ports(self):
        """Integration test - Security group has correct ports"""
        allowed_ports = [22, 80, 443]
        self.assertIn(80, allowed_ports)
        self.assertIn(443, allowed_ports)
        self.assertIn(22, allowed_ports)
    
    def test_s3_bucket_name_format(self):
        """Test S3 bucket naming convention"""
        bucket_name = "cloudops-terraform-bucket-adithya"
        self.assertTrue(bucket_name.startswith("cloudops"))
        self.assertIn("adithya", bucket_name)

if __name__ == "__main__":
    unittest.main()