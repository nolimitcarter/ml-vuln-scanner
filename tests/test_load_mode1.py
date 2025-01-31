import joblib

try:
    model = joblib.load('vulnerability_model.pkl')  # Ensure the model path is correct
    print("Model loaded successfully!")
except Exception as e:
    print(f"Error loading model: {e}")
