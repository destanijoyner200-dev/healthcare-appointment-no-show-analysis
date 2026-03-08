SELECT * FROM Appointments;

SELECT 
COUNT(CASE WHEN NoShow = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS NoShowRate
FROM Appointments;

SELECT Diagnosis, COUNT(*) AS NoShowCount
FROM Appointments
WHERE NoShow = 'Yes'
GROUP BY Diagnosis
ORDER BY NoShowCount DESC;

SELECT DayOfWeek, COUNT(*) AS NoShowCount
FROM Appointments
WHERE NoShow = 'Yes'
GROUP BY DayOfWeek
ORDER BY NoShowCount DESC;

SELECT AVG(Cost) AS AvgMissedAppointmentCost
FROM Appointments
WHERE NoShow = 'Yes';