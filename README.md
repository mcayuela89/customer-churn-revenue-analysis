# 📊 Customer Churn & Revenue Analysis

End-to-end data analytics project focused on customer churn and its impact on revenue in a subscription-based (telco) business model.

El objetivo es identificar los principales factores que influyen en el abandono de clientes y extraer insights accionables desde un punto de vista de negocio.

---

## 📊 Dashboard Preview

### 🔹 Resumen Ejecutivo
![Overview](docs/dashboard_overview.png)

### 🔹 Análisis de Churn
![Analysis](docs/dashboard_analysis.png)

---

## 🧱 Data Pipeline

- Data ingestion (CSV) – Telco Customer Churn dataset (IBM)
- Data cleaning & transformation (Python - Pandas)
  - Conversión de `TotalCharges` a formato numérico
  - Eliminación de valores nulos
  - Codificación de variable objetivo (`Churn → 0/1`)
- Exploratory Data Analysis (EDA)
  - Distribución de churn
  - Análisis por contrato, antigüedad y cargos
- Processed dataset → `data/processed/clean_churn.csv`
- Business analysis
  - Cálculo de churn rate
  - Estimación de revenue perdido
- SQL analysis
- Power BI dashboard

---

## 🚀 Key Insights

- 📉 Churn rate ~27%: una proporción significativa de clientes abandona el servicio
- 💰 ~30% del revenue está en riesgo debido al churn
- 📄 Los contratos mensuales presentan mayor tasa de abandono
- ⏳ El churn se concentra en los primeros meses del cliente (bajo tenure)
- 🌐 Los clientes con fibra óptica presentan mayor churn
- 💳 El método de pago *Electronic check* está asociado a mayor abandono


---

## 🛠️ Tech Stack

- Python (Pandas, Matplotlib, Seaborn)
- SQL (PostgreSQL)
- Power BI

---

## 🎯 Conclusion

- Mejorar el onboarding puede reducir el churn en los primeros meses
- Revisar el servicio de fibra óptica como posible punto de fricción
- Incentivar métodos de pago automáticos puede mejorar la retención
- Fomentar contratos a largo plazo reduce el riesgo de abandono