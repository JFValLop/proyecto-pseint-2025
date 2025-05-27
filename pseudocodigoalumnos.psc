Algoritmo asisntencia_alumnos
	Definir estudiantes, e, min_prom, min_asis, reprobado, aprobado Como Entero
	min_prom <- 60
	min_asis <- 20*0.75
	estudiantes <- 0
	Escribir 'ingrese cuantos estudiantes'
	Leer estudiantes
	Dimensionar nombres(estudiantes), asistencias(estudiantes), nota_1(estudiantes), nota_2(estudiantes), nota_3(estudiantes), promedio(estudiantes)
	Para i<-1 Hasta estudiantes Con Paso 1 Hacer
		Escribir 'Ingrese su nombre'
		Leer nombres[i]
		Repetir
			Escribir 'ingrese a cuantas clases asistio(solo fueron 20 clases)'
			Leer asistencias[i]
			Si asistencias[i]>20 Entonces
				Escribir 'solo fueron 20 clases'
			FinSi
		Hasta Que asistencias[i]<=20
		Escribir 'Ingrese la  nota de su primer parcial:'
		Leer nota_1[i]
		Escribir 'Ingrese la nota de su segundoparcial:'
		Leer nota_2[i]
		Escribir 'Ingrese la nota de su examen final:'
		Leer nota_3[i]
		promedio[i] <- (nota_1[i]+nota_2[i]+nota_3[i])/3
		Escribir '  '
		Escribir '----------------------------------- '
		Escribir 'Nombre del estudiante:  ', nombres[i]
		Escribir 'Clases a las que asistio el estudiante:  ', asistencias[i]
		Escribir 'El promedio del estudiante:  ', promedio[i]
		Si asistencias[i]>=min_asis Y promedio[i]>=min_prom Entonces
			Escribir 'El Estudiante aprobo el semestre'
			Escribir ' '
			aprobado <- aprobado+1
		SiNo
			Si asistencias[i]<min_asis Y promedio[i]>=min_prom Entonces
				Escribir 'No cumplio con las asistentencias, pero si con el promedio '
				Escribir 'El estudiante reprobo '
				Escribir ' '
				Escribir '----------------------------------- '
				reprobado <- reprobado+1
			SiNo
				Si asistencias[i]>=min_asis Y promedio[i]<min_prom Entonces
					Escribir 'Cumplio con las asistencias, pero no con el promedio'
					Escribir 'El estudiante reprobo '
					Escribir ' '
					Escribir '----------------------------------- '
					reprobado <- reprobado+1
				SiNo
					Escribir 'El estudiante reprobo el semestre'
					Escribir ' '
					Escribir '----------------------------------- '
					reprobado <- reprobado+1
				FinSi
			FinSi
		FinSi
	FinPara
	Para i<-1 Hasta estudiantes Con Paso 1 Hacer
		Escribir '!---------------------------------------------!'
		Escribir i, '. ', 'nombre: ', nombres[i], '   asistencia: ', asistencias[i], '   promedio: ', promedio[i]
		Escribir '!-------------------------------------------------------------!'
	FinPara
	Escribir 'El numero total de aprobados fueron:  ', aprobado
	Escribir 'El numero total de reprobados fueron:  ', reprobado
FinAlgoritmo
