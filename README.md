# 📊 Customer Churn & Revenue Analysis

End-to-end data analytics project focused on customer churn and its impact on revenue in a subscription-based (telco) business model.

---

## 📊 Dashboard Preview

*(Añadir aquí imagen cuando tengas Power BI exportado)*

![Dashboard Preview](docs/dashboard.png)

---

## 🧱 Data Pipeline

1. **Data ingestion (CSV)**
   - Telco Customer Churn dataset (IBM)

2. **Data cleaning & transformation (Python - Pandas)**
   - Conversión de `TotalCharges` a formato numérico
   - Eliminación de valores nulos
   - Codificación de variable objetivo (`Churn` → 0/1)

3. **Exploratory Data Analysis (EDA)**
   - Distribución de churn
   - Análisis por contrato, antigüedad y cargos

4. **Processed dataset**
   - Exportado a `data/processed/clean_churn.csv`

5. **Business analysis**
   - Cálculo de churn rate
   - Estimación de revenue perdido

6. **(Next steps)**
   - SQL analysis  
   - Power BI dashboard  

---

## 🚀 Key Insights

- 📉 **Churn rate ~27%**  
  Una proporción significativa de clientes abandona el servicio.

- 💰 **~30% del revenue en riesgo**  
  El churn impacta directamente en los ingresos mensuales.

- 📄 **Contrato mensual = mayor churn**  
  Los clientes *month-to-month* son los más propensos a abandonar.

- ⏳ **Clientes nuevos = mayor riesgo**  
  El churn se concentra en los primeros meses (bajo tenure).

- 💳 **Mayor precio → mayor churn**  
  Los clientes con cargos más altos muestran mayor probabilidad de abandono.


---

## 🛠️ Tech Stack

- Python (pandas, seaborn, matplotlib)  
- SQL  
- Power BI  

---

## 🎯 Conclusion

El churn representa un problema crítico con impacto directo en ingresos.  
La identificación temprana de clientes en riesgo y estrategias de retención pueden mejorar significativamente la rentabilidad del negocio.