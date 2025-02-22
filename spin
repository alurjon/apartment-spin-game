<!DOCTYPE html>
<html>
<head>
  <title>Apartment Number & Spin to Win!</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      text-align: center;
      padding: 50px;
    }
    .form-container {
      margin: 0 auto;
      max-width: 300px;
      padding: 20px;
      border: 1px solid #ccc;
      border-radius: 10px;
      background: #f9f9f9;
    }
    input[type="text"] {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    button {
      padding: 10px 20px;
      font-size: 1em;
      background: #007bff;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    button:hover {
      background: #0056b3;
    }
  </style>
</head>
<body>
  <div class="form-container">
    <h2>Enter Your Apartment Number</h2>
    <form id="apartmentForm" action="https://forms.gle/your-form-link" method="GET" target="_blank">
      <input type="text" id="apartmentNumber" name="entry.your-field-id" placeholder="Apartment Number" required>
      <button type="submit">Submit</button>
    </form>
  </div>

  <script>
    // Redirect to the spin-to-win game after form submission
    document.getElementById('apartmentForm').addEventListener('submit', function(event) {
      event.preventDefault(); // Prevent the form from submitting immediately
      
      // Get the apartment number
      const apartmentNumber = document.getElementById('apartmentNumber').value;
      
      // Save the apartment number to local storage (optional)
      localStorage.setItem('apartmentNumber', apartmentNumber);
      
      // Redirect to the spin-to-win game
      window.location.href = 'https://sites.google.com/view/spin-to-win'; // Replace with your game URL
    });
  </script>
</body>
</html>
