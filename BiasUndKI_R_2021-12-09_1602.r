#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('BiasUndKI_DATA_2021-12-09_1602.csv')
#Setting Labels

label(data$id)="ID"
label(data$redcap_survey_identifier)="Survey Identifier"
label(data$sprachauswahl_timestamp)="Survey Timestamp"
label(data$language)="Bitte wählen Sie Ihre Sprache/ Please choose your language:"
label(data$sprachauswahl_complete)="Complete?"
label(data$fragebogen_fairness_und_ki_timestamp)="Survey Timestamp"
label(data$quelle)="Wie sind Sie auf diesen Fragebogen aufmerksam geworden?"
label(data$quelle_andere)="Wie sind Sie auf diesen Fragebogen aufmerksam geworden:"
label(data$arbeitsland)="In welchem Land arbeiten Sie?"
label(data$arbeitsland_andere)="In welchem anderen Land arbeiten Sie:"
label(data$arbeitgeber)="In welcher Firma/Institution arbeiten Sie?"
label(data$geschlecht)="Bitte geben Sie ihr Geschlecht an:"
label(data$alter)="Wie alt sind Sie? "
label(data$sektor)="In welchem Sektor sind Sie tätig?"
label(data$sektor_andere)="In welchem anderen Sektor sind Sie tätig:"
label(data$ki_entwicklung)="Sind Sie derzeit an einer KI-Entwicklung beteiligt?"
label(data$kommentar)="Haben Sie generelle Anmerkungen zum Fragebogen?"
label(data$fragebogen_fairness_und_ki_complete)="Complete?"
label(data$fragebogen_fairness_und_ki_2_timestamp)="Survey Timestamp"
label(data$ki_entwicklungsphase___1)="In welcher Phase entwickeln oder haben Sie KI-Projekte entwickelt? (choice=Projektplanung)"
label(data$ki_entwicklungsphase___2)="In welcher Phase entwickeln oder haben Sie KI-Projekte entwickelt? (choice=Datenerfassung/-aufbereitung)"
label(data$ki_entwicklungsphase___3)="In welcher Phase entwickeln oder haben Sie KI-Projekte entwickelt? (choice=Datenannotation)"
label(data$ki_entwicklungsphase___4)="In welcher Phase entwickeln oder haben Sie KI-Projekte entwickelt? (choice=Identifizierung der KI-Algorithmen)"
label(data$ki_entwicklungsphase___5)="In welcher Phase entwickeln oder haben Sie KI-Projekte entwickelt? (choice=Training und Optimierung)"
label(data$ki_entwicklungsphase___6)="In welcher Phase entwickeln oder haben Sie KI-Projekte entwickelt? (choice=Ertesten der KI-Algorithmen in der Praxis)"
label(data$ki_entwicklungsphase___7)="In welcher Phase entwickeln oder haben Sie KI-Projekte entwickelt? (choice=Andere (bitte angeben))"
label(data$ki_entwicklungsphase___8)="In welcher Phase entwickeln oder haben Sie KI-Projekte entwickelt? (choice=Keine Angabe)"
label(data$ki_entwicklungsphase_ander)="In welcher anderen Phase der Entwicklung befinden Sie sich in einem derzeitigen Projekt:"
label(data$med_fachbereich___1)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Allgemeinmedizin)"
label(data$med_fachbereich___2)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Anästhesiologie)"
label(data$med_fachbereich___3)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Anatomie)"
label(data$med_fachbereich___4)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Arbeitsmedizin)"
label(data$med_fachbereich___5)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Augenheilkunde)"
label(data$med_fachbereich___6)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Biochemie)"
label(data$med_fachbereich___7)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Chirurgie)"
label(data$med_fachbereich___8)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Frauenheilkunde und Geburtshilfe)"
label(data$med_fachbereich___9)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Hals-Nasen-Ohrenheilkunde)"
label(data$med_fachbereich___10)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Haut- und Geschlechtskrankheiten)"
label(data$med_fachbereich___11)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Humangenetik)"
label(data$med_fachbereich___12)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Hygiene und Umweltmedizin)"
label(data$med_fachbereich___13)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Innere Medizin)"
label(data$med_fachbereich___14)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Kinder- und Jugendmedizin)"
label(data$med_fachbereich___15)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Kinder- und Jugendpsychiatrie und -psychotherapie)"
label(data$med_fachbereich___16)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Laboratoriumsmedizin)"
label(data$med_fachbereich___17)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Mikrobiologie, Virologie und Infektionsepidemiologie)"
label(data$med_fachbereich___18)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Mund-Kiefer-Gesichtschirurgie)"
label(data$med_fachbereich___19)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Neurochirurgie)"
label(data$med_fachbereich___20)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Neurologie)"
label(data$med_fachbereich___21)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Nuklearmedizin)"
label(data$med_fachbereich___22)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Öffentliches Gesundheitswesen)"
label(data$med_fachbereich___23)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Pathologie)"
label(data$med_fachbereich___24)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Pharmakologie)"
label(data$med_fachbereich___25)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Phoniatrie und Pädaudiologie)"
label(data$med_fachbereich___26)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Physikalische und Rehabilitative Medizin)"
label(data$med_fachbereich___27)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Physiologie)"
label(data$med_fachbereich___28)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Psychiatrie und Psychotherapie)"
label(data$med_fachbereich___29)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Psychosomatische Medizin und Psychotherapie)"
label(data$med_fachbereich___30)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Radiologie)"
label(data$med_fachbereich___31)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Rechtsmedizin)"
label(data$med_fachbereich___32)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Strahlentherapie)"
label(data$med_fachbereich___33)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Transfusionsmedizin)"
label(data$med_fachbereich___34)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Urologie)"
label(data$med_fachbereich___35)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Medizininformatik/ Digitale Medizin)"
label(data$med_fachbereich___36)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Andere (bitte angeben))"
label(data$med_fachbereich___37)="In welchem medizinischen Fachbereichentwickeln Sie KI-Anwendungen? (choice=Keine Angabe)"
label(data$med_fachbereich_andere)="In welchem anderen medizinischen Fachbereichentwickeln Sie KI-Anwendungen:"
label(data$ki_art___1)="In welchem der folgenden KI Bereiche entwickeln Sie? (choice=Maschinelles Lernen)"
label(data$ki_art___2)="In welchem der folgenden KI Bereiche entwickeln Sie? (choice=Deep Learning)"
label(data$ki_art___3)="In welchem der folgenden KI Bereiche entwickeln Sie? (choice=Andere Form von KI)"
label(data$ki_art___4)="In welchem der folgenden KI Bereiche entwickeln Sie? (choice=Keine Angabe)"
label(data$ki_art_ml___1)="Bitte spezifizieren Sie die Art von Maschinellem Lernen (ML) welche Sie entwickeln: (choice=Supervised ML)"
label(data$ki_art_ml___2)="Bitte spezifizieren Sie die Art von Maschinellem Lernen (ML) welche Sie entwickeln: (choice=Semi-supervised ML)"
label(data$ki_art_ml___3)="Bitte spezifizieren Sie die Art von Maschinellem Lernen (ML) welche Sie entwickeln: (choice=Unsupervised ML)"
label(data$ki_art_ml___4)="Bitte spezifizieren Sie die Art von Maschinellem Lernen (ML) welche Sie entwickeln: (choice=Reinforcement learning)"
label(data$ki_art_ml___5)="Bitte spezifizieren Sie die Art von Maschinellem Lernen (ML) welche Sie entwickeln: (choice=Andere)"
label(data$ki_art_ml___6)="Bitte spezifizieren Sie die Art von Maschinellem Lernen (ML) welche Sie entwickeln: (choice=Keine Angabe)"
label(data$ki_art_dl___1)="Bitte spezifizieren Sie die Art von Deep Learning welche Sie entwickeln: (choice=Convolutional Networks)"
label(data$ki_art_dl___2)="Bitte spezifizieren Sie die Art von Deep Learning welche Sie entwickeln: (choice=Recurrent neural Networks)"
label(data$ki_art_dl___3)="Bitte spezifizieren Sie die Art von Deep Learning welche Sie entwickeln: (choice=Autoencoders)"
label(data$ki_art_dl___4)="Bitte spezifizieren Sie die Art von Deep Learning welche Sie entwickeln: (choice=Andere)"
label(data$ki_art_dl___5)="Bitte spezifizieren Sie die Art von Deep Learning welche Sie entwickeln: (choice=Keine Angabe)"
label(data$ki_bereich___1)="In welchem der folgenden KI Bereiche entwickeln Sie? (choice=Natural Language Processing)"
label(data$ki_bereich___2)="In welchem der folgenden KI Bereiche entwickeln Sie? (choice=Clinical Decision Support)"
label(data$ki_bereich___3)="In welchem der folgenden KI Bereiche entwickeln Sie? (choice=Bildverarbeitung)"
label(data$ki_bereich___4)="In welchem der folgenden KI Bereiche entwickeln Sie? (choice=Computer Vision (Bsp. Objekterkennung))"
label(data$ki_bereich___5)="In welchem der folgenden KI Bereiche entwickeln Sie? (choice=Robotics)"
label(data$ki_bereich___6)="In welchem der folgenden KI Bereiche entwickeln Sie? (choice=Andere (bitte angeben))"
label(data$ki_bereich___7)="In welchem der folgenden KI Bereiche entwickeln Sie? (choice=Keine Angabe)"
label(data$ki_bereich_andere)="In welchem anderen KI Bereich entwickeln Sie:"
label(data$bias_ki)="Wie vertraut sind sie mit Bias in der KI?"
label(data$bias_feld___1)="Wo kann Ihrer Meinung nach Bias in KI auftreten? (choice=Methodik der Algorithmen)"
label(data$bias_feld___2)="Wo kann Ihrer Meinung nach Bias in KI auftreten? (choice=Gesellschaftliche Faktoren)"
label(data$bias_feld___3)="Wo kann Ihrer Meinung nach Bias in KI auftreten? (choice=Bias basierend auf Datenvalidierungs- oder Datensicherheitsmethodik)"
label(data$bias_feld___4)="Wo kann Ihrer Meinung nach Bias in KI auftreten? (choice=Trifft nicht zu)"
label(data$bias_feld___5)="Wo kann Ihrer Meinung nach Bias in KI auftreten? (choice=Andere (bitte angeben))"
label(data$bias_feld___6)="Wo kann Ihrer Meinung nach Bias in KI auftreten? (choice=Keine der genannten)"
label(data$bias_feld_andere)="Wo kann Ihrer Meinung nach Bias in KI auftreten? Anderen Bereich bitte angeben:"
label(data$ki_trainingsdaten___1)="Welche Daten nutzen Sie, um KI-Algorithmen zu trainieren? (choice=Bilddaten)"
label(data$ki_trainingsdaten___2)="Welche Daten nutzen Sie, um KI-Algorithmen zu trainieren? (choice=Audiodaten)"
label(data$ki_trainingsdaten___3)="Welche Daten nutzen Sie, um KI-Algorithmen zu trainieren? (choice=Textdaten)"
label(data$ki_trainingsdaten___4)="Welche Daten nutzen Sie, um KI-Algorithmen zu trainieren? (choice=Keine Angabe)"
label(data$ki_daten_quelle___1)="Woher stammen die von Ihnen verwendeten Daten? (choice=Wearables)"
label(data$ki_daten_quelle___2)="Woher stammen die von Ihnen verwendeten Daten? (choice=Register)"
label(data$ki_daten_quelle___3)="Woher stammen die von Ihnen verwendeten Daten? (choice=Datenbank aus einem Zentrum)"
label(data$ki_daten_quelle___4)="Woher stammen die von Ihnen verwendeten Daten? (choice=Multizentrische Datenbank)"
label(data$ki_daten_quelle___5)="Woher stammen die von Ihnen verwendeten Daten? (choice=Andere (bitte angeben))"
label(data$ki_daten_quelle___6)="Woher stammen die von Ihnen verwendeten Daten? (choice=Keine Angabe)"
label(data$ki_daten_quelle_andere)="Die verwendeten Daten stammen aus: "
label(data$nat_internat_daten)="Arbeiten Sie mit nationalen oder internationalen Daten?"
label(data$standard_daten)="Denken Sie, die Verwendung standardisierter Daten (internationale semantische und syntaktische Standards wie HL7 FHIR, SNOMED CT) zum Trainieren der Algorithmen kann Bias verhindern?"
label(data$massnahmen_bias___1)="Mit welchen Maßnahmen zur Vermeidung von Bias in der KI sind Sie vertraut? (choice=Verwendung von Explainable Artificial Intelligence (XAI)/ Erklärbare KI)"
label(data$massnahmen_bias___2)="Mit welchen Maßnahmen zur Vermeidung von Bias in der KI sind Sie vertraut? (choice=Erhebung von soziodemographischen Datenpunkten)"
label(data$massnahmen_bias___3)="Mit welchen Maßnahmen zur Vermeidung von Bias in der KI sind Sie vertraut? (choice=Statistische Analyse)"
label(data$massnahmen_bias___4)="Mit welchen Maßnahmen zur Vermeidung von Bias in der KI sind Sie vertraut? (choice=Programme zur Bewertung der Fairness von KI)"
label(data$massnahmen_bias___5)="Mit welchen Maßnahmen zur Vermeidung von Bias in der KI sind Sie vertraut? (choice=Mir sind keine bekannt)"
label(data$massnahmen_bias___6)="Mit welchen Maßnahmen zur Vermeidung von Bias in der KI sind Sie vertraut? (choice=Andere (bitte angeben))"
label(data$massnahmen_bias_andere)="Mit nennen sie die anderen Maßnahmen zur Vermeidung von Bias in der KI, mit denen Sie vertraut sind:"
label(data$soziodem_daten___1)="Welche der folgenden soziodemographischen Datenpunkte würden Sie zur Vermeidung von Bias in der KI erheben? (choice=Biologisches Geschlecht)"
label(data$soziodem_daten___2)="Welche der folgenden soziodemographischen Datenpunkte würden Sie zur Vermeidung von Bias in der KI erheben? (choice=Soziales Geschlecht)"
label(data$soziodem_daten___3)="Welche der folgenden soziodemographischen Datenpunkte würden Sie zur Vermeidung von Bias in der KI erheben? (choice=Alter)"
label(data$soziodem_daten___4)="Welche der folgenden soziodemographischen Datenpunkte würden Sie zur Vermeidung von Bias in der KI erheben? (choice=Herkunft)"
label(data$soziodem_daten___5)="Welche der folgenden soziodemographischen Datenpunkte würden Sie zur Vermeidung von Bias in der KI erheben? (choice=Andere (bitte angeben))"
label(data$soziodem_daten___6)="Welche der folgenden soziodemographischen Datenpunkte würden Sie zur Vermeidung von Bias in der KI erheben? (choice=Keine)"
label(data$soziodem_daten___7)="Welche der folgenden soziodemographischen Datenpunkte würden Sie zur Vermeidung von Bias in der KI erheben? (choice=Keine Angabe)"
label(data$soziodem_daten_andere)="Welche anderen soziodemographischen Datenpunkte würden Sie zur Vermeidung von Bias in der KI erheben:"
label(data$soziodem_verwendung___1)="Wofür würden Sie die von Ihnen genannten soziodemographischen Datenpunkte verwenden? (choice=Modellierung)"
label(data$soziodem_verwendung___2)="Wofür würden Sie die von Ihnen genannten soziodemographischen Datenpunkte verwenden? (choice=Analyse)"
label(data$soziodem_verwendung___3)="Wofür würden Sie die von Ihnen genannten soziodemographischen Datenpunkte verwenden? (choice=Datenerhebung)"
label(data$soziodem_verwendung___4)="Wofür würden Sie die von Ihnen genannten soziodemographischen Datenpunkte verwenden? (choice=Keine Angabe)"
label(data$fairness_ki)="Wie schätzen Sie die Fairness von KI in Ihrem Bereich der KI-Entwicklung ein?  (Werden bestimmte Personengruppen nicht gleich berücksichtigt/behandelt?)"
label(data$fairness_ki_block___1)="Was verhindert Ihrer Meinung nach faire KI in Ihrem Anwendungsbereich? (choice=Mangel an Ressourcen)"
label(data$fairness_ki_block___2)="Was verhindert Ihrer Meinung nach faire KI in Ihrem Anwendungsbereich? (choice=Mangelnde Unterstützung von Vorgesetzten/ der Einrichtung)"
label(data$fairness_ki_block___3)="Was verhindert Ihrer Meinung nach faire KI in Ihrem Anwendungsbereich? (choice=Mangelndes Wissen/ Know-how)"
label(data$fairness_ki_block___4)="Was verhindert Ihrer Meinung nach faire KI in Ihrem Anwendungsbereich? (choice=Mangel an fairen Daten)"
label(data$fairness_ki_block___5)="Was verhindert Ihrer Meinung nach faire KI in Ihrem Anwendungsbereich? (choice=Mangel an Guidelines/Vorgaben für faire KI)"
label(data$fairness_ki_block___6)="Was verhindert Ihrer Meinung nach faire KI in Ihrem Anwendungsbereich? (choice=Andere (bitte angeben))"
label(data$fairness_ki_block___7)="Was verhindert Ihrer Meinung nach faire KI in Ihrem Anwendungsbereich? (choice=Keine Angabe)"
label(data$fairness_ki_block_andere)="Welche anderen Faktoren verhindern Ihrer Meinung nach faire KI in Ihrem Anwendungsbereich:"
label(data$kommentar_1)="Haben Sie generelle Anmerkungen zum Fragebogen?"
label(data$fragebogen_fairness_und_ki_2_complete)="Complete?"
label(data$questionnaire_fairness_and_ai_timestamp)="Survey Timestamp"
label(data$quelle_1)="How did this questionnaire reach you?"
label(data$quelle_andere_1)="How did this questionnaire reach you:"
label(data$arbeitsland_1)="Which country do you work in?"
label(data$arbeitsland_andere_1)="Which country do you work in:"
label(data$arbeitgeber_1)="What is the name of your company/institution?"
label(data$geschlecht_1)="What is your gender?"
label(data$alter_1)="What is your age?"
label(data$sektor_1)="In which area do you work in?"
label(data$sektor_andere_1)="What is your work environment:"
label(data$ki_entwicklung_1)="Are you currently involved in AI-developments?"
label(data$kommentar_2)="Do you have any comments you want to provide about the questionnaire?"
label(data$questionnaire_fairness_and_ai_complete)="Complete?"
label(data$questionnaire_fairness_and_ai_2_timestamp)="Survey Timestamp"
label(data$ki_entwicklungsphase_1___1)="At what stage are you or have you been developing AI-projects? (choice=Project planning)"
label(data$ki_entwicklungsphase_1___2)="At what stage are you or have you been developing AI-projects? (choice=Data acquisition/ data preprocessing)"
label(data$ki_entwicklungsphase_1___3)="At what stage are you or have you been developing AI-projects? (choice=Data annotation)"
label(data$ki_entwicklungsphase_1___4)="At what stage are you or have you been developing AI-projects? (choice=Identification of AI algorithms)"
label(data$ki_entwicklungsphase_1___5)="At what stage are you or have you been developing AI-projects? (choice=Training and optimization)"
label(data$ki_entwicklungsphase_1___6)="At what stage are you or have you been developing AI-projects? (choice=Practical testing of AI algorithms)"
label(data$ki_entwicklungsphase_1___7)="At what stage are you or have you been developing AI-projects? (choice=Other (please specify))"
label(data$ki_entwicklungsphase_1___8)="At what stage are you or have you been developing AI-projects? (choice=Not specified)"
label(data$ki_entwicklungsphase_ander_1)="At what other stage are/were you developing:"
label(data$med_fachbereich_1___1)="In which medical specialty are you developing AI solutions? (choice=General Medicine/Family Medicine)"
label(data$med_fachbereich_1___2)="In which medical specialty are you developing AI solutions? (choice=Anesthesiology)"
label(data$med_fachbereich_1___3)="In which medical specialty are you developing AI solutions? (choice=Anatomy)"
label(data$med_fachbereich_1___4)="In which medical specialty are you developing AI solutions? (choice=Occupational medicine)"
label(data$med_fachbereich_1___5)="In which medical specialty are you developing AI solutions? (choice=Ophthalmology)"
label(data$med_fachbereich_1___6)="In which medical specialty are you developing AI solutions? (choice=Biochemistry)"
label(data$med_fachbereich_1___7)="In which medical specialty are you developing AI solutions? (choice=Surgery)"
label(data$med_fachbereich_1___8)="In which medical specialty are you developing AI solutions? (choice=Obstetrics and gynecology)"
label(data$med_fachbereich_1___9)="In which medical specialty are you developing AI solutions? (choice=Otorhinolaryngology)"
label(data$med_fachbereich_1___10)="In which medical specialty are you developing AI solutions? (choice=Dermatology)"
label(data$med_fachbereich_1___11)="In which medical specialty are you developing AI solutions? (choice=Genetics)"
label(data$med_fachbereich_1___12)="In which medical specialty are you developing AI solutions? (choice=Environmental health)"
label(data$med_fachbereich_1___13)="In which medical specialty are you developing AI solutions? (choice=Internal medicine)"
label(data$med_fachbereich_1___14)="In which medical specialty are you developing AI solutions? (choice=Pediatrics)"
label(data$med_fachbereich_1___15)="In which medical specialty are you developing AI solutions? (choice=Child and adolescent psychiatry)"
label(data$med_fachbereich_1___16)="In which medical specialty are you developing AI solutions? (choice=Laboratory medicine)"
label(data$med_fachbereich_1___17)="In which medical specialty are you developing AI solutions? (choice=Clinical microbiology/ Infectious disease)"
label(data$med_fachbereich_1___18)="In which medical specialty are you developing AI solutions? (choice=Oral and maxillofacial surgery)"
label(data$med_fachbereich_1___19)="In which medical specialty are you developing AI solutions? (choice=Neurosurgery)"
label(data$med_fachbereich_1___20)="In which medical specialty are you developing AI solutions? (choice=Neurology)"
label(data$med_fachbereich_1___21)="In which medical specialty are you developing AI solutions? (choice=Nuclear medicine)"
label(data$med_fachbereich_1___22)="In which medical specialty are you developing AI solutions? (choice=Public Health)"
label(data$med_fachbereich_1___23)="In which medical specialty are you developing AI solutions? (choice=Pathology)"
label(data$med_fachbereich_1___24)="In which medical specialty are you developing AI solutions? (choice=Pharmacology)"
label(data$med_fachbereich_1___25)="In which medical specialty are you developing AI solutions? (choice=Phoniatrics and paediatric audiology)"
label(data$med_fachbereich_1___26)="In which medical specialty are you developing AI solutions? (choice=Physical medicine and rehabilitation)"
label(data$med_fachbereich_1___27)="In which medical specialty are you developing AI solutions? (choice=Physiology)"
label(data$med_fachbereich_1___28)="In which medical specialty are you developing AI solutions? (choice=Psychiatry/ Psychotherapy)"
label(data$med_fachbereich_1___29)="In which medical specialty are you developing AI solutions? (choice=Psychosomatics)"
label(data$med_fachbereich_1___30)="In which medical specialty are you developing AI solutions? (choice=Radiology)"
label(data$med_fachbereich_1___31)="In which medical specialty are you developing AI solutions? (choice=Forensic medicine)"
label(data$med_fachbereich_1___32)="In which medical specialty are you developing AI solutions? (choice=Radiotherapy)"
label(data$med_fachbereich_1___33)="In which medical specialty are you developing AI solutions? (choice=Transfusion medicine)"
label(data$med_fachbereich_1___34)="In which medical specialty are you developing AI solutions? (choice=Urology)"
label(data$med_fachbereich_1___35)="In which medical specialty are you developing AI solutions? (choice=Medical Informatics/ Digital Medicine)"
label(data$med_fachbereich_1___36)="In which medical specialty are you developing AI solutions? (choice=Other (please specify))"
label(data$med_fachbereich_1___37)="In which medical specialty are you developing AI solutions? (choice=Not specified)"
label(data$med_fachbereich_andere_1)="In which other medical specialty are you developing AI solutions:"
label(data$ki_art_1___1)="In which of the following areas of AI are you developing? (choice=Machine Learning)"
label(data$ki_art_1___2)="In which of the following areas of AI are you developing? (choice=Deep Learning)"
label(data$ki_art_1___3)="In which of the following areas of AI are you developing? (choice=Other type of AI)"
label(data$ki_art_1___4)="In which of the following areas of AI are you developing? (choice=Not specified)"
label(data$ki_art_ml_1___1)="Please specify the type of Machine Learning (ML) you are developing: (choice=Supervised ML)"
label(data$ki_art_ml_1___2)="Please specify the type of Machine Learning (ML) you are developing: (choice=Semi-supervised ML)"
label(data$ki_art_ml_1___3)="Please specify the type of Machine Learning (ML) you are developing: (choice=Unsupervised ML)"
label(data$ki_art_ml_1___4)="Please specify the type of Machine Learning (ML) you are developing: (choice=Reinforcement learning)"
label(data$ki_art_ml_1___5)="Please specify the type of Machine Learning (ML) you are developing: (choice=Other)"
label(data$ki_art_ml_1___6)="Please specify the type of Machine Learning (ML) you are developing: (choice=Not specified)"
label(data$ki_art_dl_1___1)="Please specify the type of Deep Learning you are developing: (choice=Convolutional Networks)"
label(data$ki_art_dl_1___2)="Please specify the type of Deep Learning you are developing: (choice=Recurrent neural Networks)"
label(data$ki_art_dl_1___3)="Please specify the type of Deep Learning you are developing: (choice=Autoencoders)"
label(data$ki_art_dl_1___4)="Please specify the type of Deep Learning you are developing: (choice=Other)"
label(data$ki_art_dl_1___5)="Please specify the type of Deep Learning you are developing: (choice=Not specified)"
label(data$ki_bereich_1___1)="In which of the following areas of AI are you developing? (choice=Natural Language Processing)"
label(data$ki_bereich_1___2)="In which of the following areas of AI are you developing? (choice=Clinical Decision Support)"
label(data$ki_bereich_1___3)="In which of the following areas of AI are you developing? (choice=Image processing)"
label(data$ki_bereich_1___4)="In which of the following areas of AI are you developing? (choice=Computer vision (e.g. object recognition))"
label(data$ki_bereich_1___5)="In which of the following areas of AI are you developing? (choice=Robotics)"
label(data$ki_bereich_1___6)="In which of the following areas of AI are you developing? (choice=Other (please specify))"
label(data$ki_bereich_1___7)="In which of the following areas of AI are you developing? (choice=Not specified)"
label(data$ki_bereich_andere_1)="Which other area of AI do your development efforts fall into:"
label(data$bias_ki_1)="How familiar are you with biases in AI?"
label(data$bias_feld_1___1)="Where do you think biases in AI can occur? (choice=Methodology of algorithms)"
label(data$bias_feld_1___2)="Where do you think biases in AI can occur? (choice=Societal factors)"
label(data$bias_feld_1___3)="Where do you think biases in AI can occur? (choice=Bias due to data validation or data security)"
label(data$bias_feld_1___4)="Where do you think biases in AI can occur? (choice=Not specified)"
label(data$bias_feld_1___5)="Where do you think biases in AI can occur? (choice=Other (please specify))"
label(data$bias_feld_1___6)="Where do you think biases in AI can occur? (choice=None of the above)"
label(data$bias_feld_andere_1)="Where else do you think biases in AI can occur?"
label(data$ki_trainingsdaten_1___1)="What data do you use to train AI algorithms? (choice=Image data)"
label(data$ki_trainingsdaten_1___2)="What data do you use to train AI algorithms? (choice=Audio data)"
label(data$ki_trainingsdaten_1___3)="What data do you use to train AI algorithms? (choice=Text data)"
label(data$ki_trainingsdaten_1___4)="What data do you use to train AI algorithms? (choice=Not specified)"
label(data$ki_daten_quelle_1___1)="What is the origin of your data? (choice=Wearables)"
label(data$ki_daten_quelle_1___2)="What is the origin of your data? (choice=Registries)"
label(data$ki_daten_quelle_1___3)="What is the origin of your data? (choice=Database from one center)"
label(data$ki_daten_quelle_1___4)="What is the origin of your data? (choice=Multi-center database)"
label(data$ki_daten_quelle_1___5)="What is the origin of your data? (choice=Other (please specify))"
label(data$ki_daten_quelle_1___6)="What is the origin of your data? (choice=Not specified)"
label(data$ki_daten_quelle_andere_1)="Please specify the origin of your data:"
label(data$nat_internat_daten_1)="Do you work with national or international data?"
label(data$standard_daten_1)="Do you think that using standardized data (international semantic and syntactic standards such as HL7 FHIR, SNOMED CT) when training AI algorithms can prevent bias?"
label(data$massnahmen_bias_1___1)="Do you know any of the following preventive measures to avoid bias in AI applications? (choice=Employ Explainable Artificial Intelligence (XAI))"
label(data$massnahmen_bias_1___2)="Do you know any of the following preventive measures to avoid bias in AI applications? (choice=Collecting sociodemographic data points)"
label(data$massnahmen_bias_1___3)="Do you know any of the following preventive measures to avoid bias in AI applications? (choice=Statistical analysis)"
label(data$massnahmen_bias_1___4)="Do you know any of the following preventive measures to avoid bias in AI applications? (choice=Software evaluating fairness in AI)"
label(data$massnahmen_bias_1___5)="Do you know any of the following preventive measures to avoid bias in AI applications? (choice=I do not know any of them)"
label(data$massnahmen_bias_1___6)="Do you know any of the following preventive measures to avoid bias in AI applications? (choice=Other (please specify))"
label(data$massnahmen_bias_andere_1)="Please specify the other preventive measure(s) you know to avoid bias in AI applications:"
label(data$soziodem_daten_1___1)="What sociodemographic data would you collect to prevent biases in AI? (choice=Biological gender)"
label(data$soziodem_daten_1___2)="What sociodemographic data would you collect to prevent biases in AI? (choice=Social gender)"
label(data$soziodem_daten_1___3)="What sociodemographic data would you collect to prevent biases in AI? (choice=Age)"
label(data$soziodem_daten_1___4)="What sociodemographic data would you collect to prevent biases in AI? (choice=Origin)"
label(data$soziodem_daten_1___5)="What sociodemographic data would you collect to prevent biases in AI? (choice=Other (please specify))"
label(data$soziodem_daten_1___6)="What sociodemographic data would you collect to prevent biases in AI? (choice=None)"
label(data$soziodem_daten_1___7)="What sociodemographic data would you collect to prevent biases in AI? (choice=Not specified)"
label(data$soziodem_daten_andere_1)="What other sociodemographic data would you collect to prevent biases in AI?"
label(data$soziodem_verwendung_1___1)="What would you use the collected sociodemographic data for? (choice=AI modelling)"
label(data$soziodem_verwendung_1___2)="What would you use the collected sociodemographic data for? (choice=Analysis)"
label(data$soziodem_verwendung_1___3)="What would you use the collected sociodemographic data for? (choice=Data acquisition)"
label(data$soziodem_verwendung_1___4)="What would you use the collected sociodemographic data for? (choice=Not specified)"
label(data$fairness_ki_1)="How would you rate the level of fairness of AI in your AI development? (Are specific groups of people treated /considered differently from others?)"
label(data$fairness_ki_block_1___1)="What do you think is preventing fair AI in your use case? (choice=Lack of resources)"
label(data$fairness_ki_block_1___2)="What do you think is preventing fair AI in your use case? (choice=Lack of support from superiors/institution)"
label(data$fairness_ki_block_1___3)="What do you think is preventing fair AI in your use case? (choice=Lack of knowledge)"
label(data$fairness_ki_block_1___4)="What do you think is preventing fair AI in your use case? (choice=Lack of fair data)"
label(data$fairness_ki_block_1___5)="What do you think is preventing fair AI in your use case? (choice=Lack of guidelines/recommendations for fair AI)"
label(data$fairness_ki_block_1___6)="What do you think is preventing fair AI in your use case? (choice=Other (please specify))"
label(data$fairness_ki_block_1___7)="What do you think is preventing fair AI in your use case? (choice=Not specified)"
label(data$fairness_ki_block_andere_1)="What other factor(s) do you think is/are preventing fair AI in your use case?"
label(data$kommentar_3)="Do you have any comments you want to provide about the questionnaire?"
label(data$questionnaire_fairness_and_ai_2_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$language.factor = factor(data$language,levels=c("1","2"))
data$sprachauswahl_complete.factor = factor(data$sprachauswahl_complete,levels=c("0","1","2"))
data$quelle.factor = factor(data$quelle,levels=c("1","2","3","4","5","6"))
data$arbeitsland.factor = factor(data$arbeitsland,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29"))
data$geschlecht.factor = factor(data$geschlecht,levels=c("1","2","3","4","5"))
data$sektor.factor = factor(data$sektor,levels=c("1","2","3","4","5"))
data$ki_entwicklung.factor = factor(data$ki_entwicklung,levels=c("1","2","3","4","5"))
data$fragebogen_fairness_und_ki_complete.factor = factor(data$fragebogen_fairness_und_ki_complete,levels=c("0","1","2"))
data$ki_entwicklungsphase___1.factor = factor(data$ki_entwicklungsphase___1,levels=c("0","1"))
data$ki_entwicklungsphase___2.factor = factor(data$ki_entwicklungsphase___2,levels=c("0","1"))
data$ki_entwicklungsphase___3.factor = factor(data$ki_entwicklungsphase___3,levels=c("0","1"))
data$ki_entwicklungsphase___4.factor = factor(data$ki_entwicklungsphase___4,levels=c("0","1"))
data$ki_entwicklungsphase___5.factor = factor(data$ki_entwicklungsphase___5,levels=c("0","1"))
data$ki_entwicklungsphase___6.factor = factor(data$ki_entwicklungsphase___6,levels=c("0","1"))
data$ki_entwicklungsphase___7.factor = factor(data$ki_entwicklungsphase___7,levels=c("0","1"))
data$ki_entwicklungsphase___8.factor = factor(data$ki_entwicklungsphase___8,levels=c("0","1"))
data$med_fachbereich___1.factor = factor(data$med_fachbereich___1,levels=c("0","1"))
data$med_fachbereich___2.factor = factor(data$med_fachbereich___2,levels=c("0","1"))
data$med_fachbereich___3.factor = factor(data$med_fachbereich___3,levels=c("0","1"))
data$med_fachbereich___4.factor = factor(data$med_fachbereich___4,levels=c("0","1"))
data$med_fachbereich___5.factor = factor(data$med_fachbereich___5,levels=c("0","1"))
data$med_fachbereich___6.factor = factor(data$med_fachbereich___6,levels=c("0","1"))
data$med_fachbereich___7.factor = factor(data$med_fachbereich___7,levels=c("0","1"))
data$med_fachbereich___8.factor = factor(data$med_fachbereich___8,levels=c("0","1"))
data$med_fachbereich___9.factor = factor(data$med_fachbereich___9,levels=c("0","1"))
data$med_fachbereich___10.factor = factor(data$med_fachbereich___10,levels=c("0","1"))
data$med_fachbereich___11.factor = factor(data$med_fachbereich___11,levels=c("0","1"))
data$med_fachbereich___12.factor = factor(data$med_fachbereich___12,levels=c("0","1"))
data$med_fachbereich___13.factor = factor(data$med_fachbereich___13,levels=c("0","1"))
data$med_fachbereich___14.factor = factor(data$med_fachbereich___14,levels=c("0","1"))
data$med_fachbereich___15.factor = factor(data$med_fachbereich___15,levels=c("0","1"))
data$med_fachbereich___16.factor = factor(data$med_fachbereich___16,levels=c("0","1"))
data$med_fachbereich___17.factor = factor(data$med_fachbereich___17,levels=c("0","1"))
data$med_fachbereich___18.factor = factor(data$med_fachbereich___18,levels=c("0","1"))
data$med_fachbereich___19.factor = factor(data$med_fachbereich___19,levels=c("0","1"))
data$med_fachbereich___20.factor = factor(data$med_fachbereich___20,levels=c("0","1"))
data$med_fachbereich___21.factor = factor(data$med_fachbereich___21,levels=c("0","1"))
data$med_fachbereich___22.factor = factor(data$med_fachbereich___22,levels=c("0","1"))
data$med_fachbereich___23.factor = factor(data$med_fachbereich___23,levels=c("0","1"))
data$med_fachbereich___24.factor = factor(data$med_fachbereich___24,levels=c("0","1"))
data$med_fachbereich___25.factor = factor(data$med_fachbereich___25,levels=c("0","1"))
data$med_fachbereich___26.factor = factor(data$med_fachbereich___26,levels=c("0","1"))
data$med_fachbereich___27.factor = factor(data$med_fachbereich___27,levels=c("0","1"))
data$med_fachbereich___28.factor = factor(data$med_fachbereich___28,levels=c("0","1"))
data$med_fachbereich___29.factor = factor(data$med_fachbereich___29,levels=c("0","1"))
data$med_fachbereich___30.factor = factor(data$med_fachbereich___30,levels=c("0","1"))
data$med_fachbereich___31.factor = factor(data$med_fachbereich___31,levels=c("0","1"))
data$med_fachbereich___32.factor = factor(data$med_fachbereich___32,levels=c("0","1"))
data$med_fachbereich___33.factor = factor(data$med_fachbereich___33,levels=c("0","1"))
data$med_fachbereich___34.factor = factor(data$med_fachbereich___34,levels=c("0","1"))
data$med_fachbereich___35.factor = factor(data$med_fachbereich___35,levels=c("0","1"))
data$med_fachbereich___36.factor = factor(data$med_fachbereich___36,levels=c("0","1"))
data$med_fachbereich___37.factor = factor(data$med_fachbereich___37,levels=c("0","1"))
data$ki_art___1.factor = factor(data$ki_art___1,levels=c("0","1"))
data$ki_art___2.factor = factor(data$ki_art___2,levels=c("0","1"))
data$ki_art___3.factor = factor(data$ki_art___3,levels=c("0","1"))
data$ki_art___4.factor = factor(data$ki_art___4,levels=c("0","1"))
data$ki_art_ml___1.factor = factor(data$ki_art_ml___1,levels=c("0","1"))
data$ki_art_ml___2.factor = factor(data$ki_art_ml___2,levels=c("0","1"))
data$ki_art_ml___3.factor = factor(data$ki_art_ml___3,levels=c("0","1"))
data$ki_art_ml___4.factor = factor(data$ki_art_ml___4,levels=c("0","1"))
data$ki_art_ml___5.factor = factor(data$ki_art_ml___5,levels=c("0","1"))
data$ki_art_ml___6.factor = factor(data$ki_art_ml___6,levels=c("0","1"))
data$ki_art_dl___1.factor = factor(data$ki_art_dl___1,levels=c("0","1"))
data$ki_art_dl___2.factor = factor(data$ki_art_dl___2,levels=c("0","1"))
data$ki_art_dl___3.factor = factor(data$ki_art_dl___3,levels=c("0","1"))
data$ki_art_dl___4.factor = factor(data$ki_art_dl___4,levels=c("0","1"))
data$ki_art_dl___5.factor = factor(data$ki_art_dl___5,levels=c("0","1"))
data$ki_bereich___1.factor = factor(data$ki_bereich___1,levels=c("0","1"))
data$ki_bereich___2.factor = factor(data$ki_bereich___2,levels=c("0","1"))
data$ki_bereich___3.factor = factor(data$ki_bereich___3,levels=c("0","1"))
data$ki_bereich___4.factor = factor(data$ki_bereich___4,levels=c("0","1"))
data$ki_bereich___5.factor = factor(data$ki_bereich___5,levels=c("0","1"))
data$ki_bereich___6.factor = factor(data$ki_bereich___6,levels=c("0","1"))
data$ki_bereich___7.factor = factor(data$ki_bereich___7,levels=c("0","1"))
data$bias_ki.factor = factor(data$bias_ki,levels=c("1","2","3"))
data$bias_feld___1.factor = factor(data$bias_feld___1,levels=c("0","1"))
data$bias_feld___2.factor = factor(data$bias_feld___2,levels=c("0","1"))
data$bias_feld___3.factor = factor(data$bias_feld___3,levels=c("0","1"))
data$bias_feld___4.factor = factor(data$bias_feld___4,levels=c("0","1"))
data$bias_feld___5.factor = factor(data$bias_feld___5,levels=c("0","1"))
data$bias_feld___6.factor = factor(data$bias_feld___6,levels=c("0","1"))
data$ki_trainingsdaten___1.factor = factor(data$ki_trainingsdaten___1,levels=c("0","1"))
data$ki_trainingsdaten___2.factor = factor(data$ki_trainingsdaten___2,levels=c("0","1"))
data$ki_trainingsdaten___3.factor = factor(data$ki_trainingsdaten___3,levels=c("0","1"))
data$ki_trainingsdaten___4.factor = factor(data$ki_trainingsdaten___4,levels=c("0","1"))
data$ki_daten_quelle___1.factor = factor(data$ki_daten_quelle___1,levels=c("0","1"))
data$ki_daten_quelle___2.factor = factor(data$ki_daten_quelle___2,levels=c("0","1"))
data$ki_daten_quelle___3.factor = factor(data$ki_daten_quelle___3,levels=c("0","1"))
data$ki_daten_quelle___4.factor = factor(data$ki_daten_quelle___4,levels=c("0","1"))
data$ki_daten_quelle___5.factor = factor(data$ki_daten_quelle___5,levels=c("0","1"))
data$ki_daten_quelle___6.factor = factor(data$ki_daten_quelle___6,levels=c("0","1"))
data$nat_internat_daten.factor = factor(data$nat_internat_daten,levels=c("1","2","3","4"))
data$standard_daten.factor = factor(data$standard_daten,levels=c("1","2","3"))
data$massnahmen_bias___1.factor = factor(data$massnahmen_bias___1,levels=c("0","1"))
data$massnahmen_bias___2.factor = factor(data$massnahmen_bias___2,levels=c("0","1"))
data$massnahmen_bias___3.factor = factor(data$massnahmen_bias___3,levels=c("0","1"))
data$massnahmen_bias___4.factor = factor(data$massnahmen_bias___4,levels=c("0","1"))
data$massnahmen_bias___5.factor = factor(data$massnahmen_bias___5,levels=c("0","1"))
data$massnahmen_bias___6.factor = factor(data$massnahmen_bias___6,levels=c("0","1"))
data$soziodem_daten___1.factor = factor(data$soziodem_daten___1,levels=c("0","1"))
data$soziodem_daten___2.factor = factor(data$soziodem_daten___2,levels=c("0","1"))
data$soziodem_daten___3.factor = factor(data$soziodem_daten___3,levels=c("0","1"))
data$soziodem_daten___4.factor = factor(data$soziodem_daten___4,levels=c("0","1"))
data$soziodem_daten___5.factor = factor(data$soziodem_daten___5,levels=c("0","1"))
data$soziodem_daten___6.factor = factor(data$soziodem_daten___6,levels=c("0","1"))
data$soziodem_daten___7.factor = factor(data$soziodem_daten___7,levels=c("0","1"))
data$soziodem_verwendung___1.factor = factor(data$soziodem_verwendung___1,levels=c("0","1"))
data$soziodem_verwendung___2.factor = factor(data$soziodem_verwendung___2,levels=c("0","1"))
data$soziodem_verwendung___3.factor = factor(data$soziodem_verwendung___3,levels=c("0","1"))
data$soziodem_verwendung___4.factor = factor(data$soziodem_verwendung___4,levels=c("0","1"))
data$fairness_ki.factor = factor(data$fairness_ki,levels=c("1","2","3","4","5","6"))
data$fairness_ki_block___1.factor = factor(data$fairness_ki_block___1,levels=c("0","1"))
data$fairness_ki_block___2.factor = factor(data$fairness_ki_block___2,levels=c("0","1"))
data$fairness_ki_block___3.factor = factor(data$fairness_ki_block___3,levels=c("0","1"))
data$fairness_ki_block___4.factor = factor(data$fairness_ki_block___4,levels=c("0","1"))
data$fairness_ki_block___5.factor = factor(data$fairness_ki_block___5,levels=c("0","1"))
data$fairness_ki_block___6.factor = factor(data$fairness_ki_block___6,levels=c("0","1"))
data$fairness_ki_block___7.factor = factor(data$fairness_ki_block___7,levels=c("0","1"))
data$fragebogen_fairness_und_ki_2_complete.factor = factor(data$fragebogen_fairness_und_ki_2_complete,levels=c("0","1","2"))
data$quelle_1.factor = factor(data$quelle_1,levels=c("1","2","3","4","5","6"))
data$arbeitsland_1.factor = factor(data$arbeitsland_1,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29"))
data$geschlecht_1.factor = factor(data$geschlecht_1,levels=c("1","2","3","4","5"))
data$sektor_1.factor = factor(data$sektor_1,levels=c("1","2","3","4","5"))
data$ki_entwicklung_1.factor = factor(data$ki_entwicklung_1,levels=c("1","2","3","4","5"))
data$questionnaire_fairness_and_ai_complete.factor = factor(data$questionnaire_fairness_and_ai_complete,levels=c("0","1","2"))
data$ki_entwicklungsphase_1___1.factor = factor(data$ki_entwicklungsphase_1___1,levels=c("0","1"))
data$ki_entwicklungsphase_1___2.factor = factor(data$ki_entwicklungsphase_1___2,levels=c("0","1"))
data$ki_entwicklungsphase_1___3.factor = factor(data$ki_entwicklungsphase_1___3,levels=c("0","1"))
data$ki_entwicklungsphase_1___4.factor = factor(data$ki_entwicklungsphase_1___4,levels=c("0","1"))
data$ki_entwicklungsphase_1___5.factor = factor(data$ki_entwicklungsphase_1___5,levels=c("0","1"))
data$ki_entwicklungsphase_1___6.factor = factor(data$ki_entwicklungsphase_1___6,levels=c("0","1"))
data$ki_entwicklungsphase_1___7.factor = factor(data$ki_entwicklungsphase_1___7,levels=c("0","1"))
data$ki_entwicklungsphase_1___8.factor = factor(data$ki_entwicklungsphase_1___8,levels=c("0","1"))
data$med_fachbereich_1___1.factor = factor(data$med_fachbereich_1___1,levels=c("0","1"))
data$med_fachbereich_1___2.factor = factor(data$med_fachbereich_1___2,levels=c("0","1"))
data$med_fachbereich_1___3.factor = factor(data$med_fachbereich_1___3,levels=c("0","1"))
data$med_fachbereich_1___4.factor = factor(data$med_fachbereich_1___4,levels=c("0","1"))
data$med_fachbereich_1___5.factor = factor(data$med_fachbereich_1___5,levels=c("0","1"))
data$med_fachbereich_1___6.factor = factor(data$med_fachbereich_1___6,levels=c("0","1"))
data$med_fachbereich_1___7.factor = factor(data$med_fachbereich_1___7,levels=c("0","1"))
data$med_fachbereich_1___8.factor = factor(data$med_fachbereich_1___8,levels=c("0","1"))
data$med_fachbereich_1___9.factor = factor(data$med_fachbereich_1___9,levels=c("0","1"))
data$med_fachbereich_1___10.factor = factor(data$med_fachbereich_1___10,levels=c("0","1"))
data$med_fachbereich_1___11.factor = factor(data$med_fachbereich_1___11,levels=c("0","1"))
data$med_fachbereich_1___12.factor = factor(data$med_fachbereich_1___12,levels=c("0","1"))
data$med_fachbereich_1___13.factor = factor(data$med_fachbereich_1___13,levels=c("0","1"))
data$med_fachbereich_1___14.factor = factor(data$med_fachbereich_1___14,levels=c("0","1"))
data$med_fachbereich_1___15.factor = factor(data$med_fachbereich_1___15,levels=c("0","1"))
data$med_fachbereich_1___16.factor = factor(data$med_fachbereich_1___16,levels=c("0","1"))
data$med_fachbereich_1___17.factor = factor(data$med_fachbereich_1___17,levels=c("0","1"))
data$med_fachbereich_1___18.factor = factor(data$med_fachbereich_1___18,levels=c("0","1"))
data$med_fachbereich_1___19.factor = factor(data$med_fachbereich_1___19,levels=c("0","1"))
data$med_fachbereich_1___20.factor = factor(data$med_fachbereich_1___20,levels=c("0","1"))
data$med_fachbereich_1___21.factor = factor(data$med_fachbereich_1___21,levels=c("0","1"))
data$med_fachbereich_1___22.factor = factor(data$med_fachbereich_1___22,levels=c("0","1"))
data$med_fachbereich_1___23.factor = factor(data$med_fachbereich_1___23,levels=c("0","1"))
data$med_fachbereich_1___24.factor = factor(data$med_fachbereich_1___24,levels=c("0","1"))
data$med_fachbereich_1___25.factor = factor(data$med_fachbereich_1___25,levels=c("0","1"))
data$med_fachbereich_1___26.factor = factor(data$med_fachbereich_1___26,levels=c("0","1"))
data$med_fachbereich_1___27.factor = factor(data$med_fachbereich_1___27,levels=c("0","1"))
data$med_fachbereich_1___28.factor = factor(data$med_fachbereich_1___28,levels=c("0","1"))
data$med_fachbereich_1___29.factor = factor(data$med_fachbereich_1___29,levels=c("0","1"))
data$med_fachbereich_1___30.factor = factor(data$med_fachbereich_1___30,levels=c("0","1"))
data$med_fachbereich_1___31.factor = factor(data$med_fachbereich_1___31,levels=c("0","1"))
data$med_fachbereich_1___32.factor = factor(data$med_fachbereich_1___32,levels=c("0","1"))
data$med_fachbereich_1___33.factor = factor(data$med_fachbereich_1___33,levels=c("0","1"))
data$med_fachbereich_1___34.factor = factor(data$med_fachbereich_1___34,levels=c("0","1"))
data$med_fachbereich_1___35.factor = factor(data$med_fachbereich_1___35,levels=c("0","1"))
data$med_fachbereich_1___36.factor = factor(data$med_fachbereich_1___36,levels=c("0","1"))
data$med_fachbereich_1___37.factor = factor(data$med_fachbereich_1___37,levels=c("0","1"))
data$ki_art_1___1.factor = factor(data$ki_art_1___1,levels=c("0","1"))
data$ki_art_1___2.factor = factor(data$ki_art_1___2,levels=c("0","1"))
data$ki_art_1___3.factor = factor(data$ki_art_1___3,levels=c("0","1"))
data$ki_art_1___4.factor = factor(data$ki_art_1___4,levels=c("0","1"))
data$ki_art_ml_1___1.factor = factor(data$ki_art_ml_1___1,levels=c("0","1"))
data$ki_art_ml_1___2.factor = factor(data$ki_art_ml_1___2,levels=c("0","1"))
data$ki_art_ml_1___3.factor = factor(data$ki_art_ml_1___3,levels=c("0","1"))
data$ki_art_ml_1___4.factor = factor(data$ki_art_ml_1___4,levels=c("0","1"))
data$ki_art_ml_1___5.factor = factor(data$ki_art_ml_1___5,levels=c("0","1"))
data$ki_art_ml_1___6.factor = factor(data$ki_art_ml_1___6,levels=c("0","1"))
data$ki_art_dl_1___1.factor = factor(data$ki_art_dl_1___1,levels=c("0","1"))
data$ki_art_dl_1___2.factor = factor(data$ki_art_dl_1___2,levels=c("0","1"))
data$ki_art_dl_1___3.factor = factor(data$ki_art_dl_1___3,levels=c("0","1"))
data$ki_art_dl_1___4.factor = factor(data$ki_art_dl_1___4,levels=c("0","1"))
data$ki_art_dl_1___5.factor = factor(data$ki_art_dl_1___5,levels=c("0","1"))
data$ki_bereich_1___1.factor = factor(data$ki_bereich_1___1,levels=c("0","1"))
data$ki_bereich_1___2.factor = factor(data$ki_bereich_1___2,levels=c("0","1"))
data$ki_bereich_1___3.factor = factor(data$ki_bereich_1___3,levels=c("0","1"))
data$ki_bereich_1___4.factor = factor(data$ki_bereich_1___4,levels=c("0","1"))
data$ki_bereich_1___5.factor = factor(data$ki_bereich_1___5,levels=c("0","1"))
data$ki_bereich_1___6.factor = factor(data$ki_bereich_1___6,levels=c("0","1"))
data$ki_bereich_1___7.factor = factor(data$ki_bereich_1___7,levels=c("0","1"))
data$bias_ki_1.factor = factor(data$bias_ki_1,levels=c("1","2","3"))
data$bias_feld_1___1.factor = factor(data$bias_feld_1___1,levels=c("0","1"))
data$bias_feld_1___2.factor = factor(data$bias_feld_1___2,levels=c("0","1"))
data$bias_feld_1___3.factor = factor(data$bias_feld_1___3,levels=c("0","1"))
data$bias_feld_1___4.factor = factor(data$bias_feld_1___4,levels=c("0","1"))
data$bias_feld_1___5.factor = factor(data$bias_feld_1___5,levels=c("0","1"))
data$bias_feld_1___6.factor = factor(data$bias_feld_1___6,levels=c("0","1"))
data$ki_trainingsdaten_1___1.factor = factor(data$ki_trainingsdaten_1___1,levels=c("0","1"))
data$ki_trainingsdaten_1___2.factor = factor(data$ki_trainingsdaten_1___2,levels=c("0","1"))
data$ki_trainingsdaten_1___3.factor = factor(data$ki_trainingsdaten_1___3,levels=c("0","1"))
data$ki_trainingsdaten_1___4.factor = factor(data$ki_trainingsdaten_1___4,levels=c("0","1"))
data$ki_daten_quelle_1___1.factor = factor(data$ki_daten_quelle_1___1,levels=c("0","1"))
data$ki_daten_quelle_1___2.factor = factor(data$ki_daten_quelle_1___2,levels=c("0","1"))
data$ki_daten_quelle_1___3.factor = factor(data$ki_daten_quelle_1___3,levels=c("0","1"))
data$ki_daten_quelle_1___4.factor = factor(data$ki_daten_quelle_1___4,levels=c("0","1"))
data$ki_daten_quelle_1___5.factor = factor(data$ki_daten_quelle_1___5,levels=c("0","1"))
data$ki_daten_quelle_1___6.factor = factor(data$ki_daten_quelle_1___6,levels=c("0","1"))
data$nat_internat_daten_1.factor = factor(data$nat_internat_daten_1,levels=c("1","2","3","4"))
data$standard_daten_1.factor = factor(data$standard_daten_1,levels=c("1","2","3"))
data$massnahmen_bias_1___1.factor = factor(data$massnahmen_bias_1___1,levels=c("0","1"))
data$massnahmen_bias_1___2.factor = factor(data$massnahmen_bias_1___2,levels=c("0","1"))
data$massnahmen_bias_1___3.factor = factor(data$massnahmen_bias_1___3,levels=c("0","1"))
data$massnahmen_bias_1___4.factor = factor(data$massnahmen_bias_1___4,levels=c("0","1"))
data$massnahmen_bias_1___5.factor = factor(data$massnahmen_bias_1___5,levels=c("0","1"))
data$massnahmen_bias_1___6.factor = factor(data$massnahmen_bias_1___6,levels=c("0","1"))
data$soziodem_daten_1___1.factor = factor(data$soziodem_daten_1___1,levels=c("0","1"))
data$soziodem_daten_1___2.factor = factor(data$soziodem_daten_1___2,levels=c("0","1"))
data$soziodem_daten_1___3.factor = factor(data$soziodem_daten_1___3,levels=c("0","1"))
data$soziodem_daten_1___4.factor = factor(data$soziodem_daten_1___4,levels=c("0","1"))
data$soziodem_daten_1___5.factor = factor(data$soziodem_daten_1___5,levels=c("0","1"))
data$soziodem_daten_1___6.factor = factor(data$soziodem_daten_1___6,levels=c("0","1"))
data$soziodem_daten_1___7.factor = factor(data$soziodem_daten_1___7,levels=c("0","1"))
data$soziodem_verwendung_1___1.factor = factor(data$soziodem_verwendung_1___1,levels=c("0","1"))
data$soziodem_verwendung_1___2.factor = factor(data$soziodem_verwendung_1___2,levels=c("0","1"))
data$soziodem_verwendung_1___3.factor = factor(data$soziodem_verwendung_1___3,levels=c("0","1"))
data$soziodem_verwendung_1___4.factor = factor(data$soziodem_verwendung_1___4,levels=c("0","1"))
data$fairness_ki_1.factor = factor(data$fairness_ki_1,levels=c("1","2","3","4","5","6"))
data$fairness_ki_block_1___1.factor = factor(data$fairness_ki_block_1___1,levels=c("0","1"))
data$fairness_ki_block_1___2.factor = factor(data$fairness_ki_block_1___2,levels=c("0","1"))
data$fairness_ki_block_1___3.factor = factor(data$fairness_ki_block_1___3,levels=c("0","1"))
data$fairness_ki_block_1___4.factor = factor(data$fairness_ki_block_1___4,levels=c("0","1"))
data$fairness_ki_block_1___5.factor = factor(data$fairness_ki_block_1___5,levels=c("0","1"))
data$fairness_ki_block_1___6.factor = factor(data$fairness_ki_block_1___6,levels=c("0","1"))
data$fairness_ki_block_1___7.factor = factor(data$fairness_ki_block_1___7,levels=c("0","1"))
data$questionnaire_fairness_and_ai_2_complete.factor = factor(data$questionnaire_fairness_and_ai_2_complete,levels=c("0","1","2"))

levels(data$language.factor)=c("Deutsch","English")
levels(data$sprachauswahl_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$quelle.factor)=c("Twitter","Linkedin","Emailverteiler der eigenen Einrichtung","Persönliches Anschreiben","Andere (bitte angeben)","Keine Angabe")
levels(data$arbeitsland.factor)=c("Belgien","Deutschland","Frankreich","Italien","Luxembourg","Niederlande","Dänemark","Irland","Griechenland","Portugal","Spanien","Finnland","Österreich","Schweden","Estland","Lettland","Litauen","Malta","Polen","Slowakei","Slowenien","Tschechien","Ungarn","Zypern","Bulgarien","Rumänien","Kroatien","Anderes Land (bitte angeben)","Keine Angabe")
levels(data$geschlecht.factor)=c("Weiblich","Männlich","Divers","Unbestimmt","Keine Angabe")
levels(data$sektor.factor)=c("Wissenschaft","Klinische Tätigkeit","Wirtschaft","Andere (bitte angeben)","Keine Angabe")
levels(data$ki_entwicklung.factor)=c("Ja","Nein, aber in der Vergangenheit","Nein, aber ist in Planung","Nein, noch nie","Keine Angabe")
levels(data$fragebogen_fairness_und_ki_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$ki_entwicklungsphase___1.factor)=c("Unchecked","Checked")
levels(data$ki_entwicklungsphase___2.factor)=c("Unchecked","Checked")
levels(data$ki_entwicklungsphase___3.factor)=c("Unchecked","Checked")
levels(data$ki_entwicklungsphase___4.factor)=c("Unchecked","Checked")
levels(data$ki_entwicklungsphase___5.factor)=c("Unchecked","Checked")
levels(data$ki_entwicklungsphase___6.factor)=c("Unchecked","Checked")
levels(data$ki_entwicklungsphase___7.factor)=c("Unchecked","Checked")
levels(data$ki_entwicklungsphase___8.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___1.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___2.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___3.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___4.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___5.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___6.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___7.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___8.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___9.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___10.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___11.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___12.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___13.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___14.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___15.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___16.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___17.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___18.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___19.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___20.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___21.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___22.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___23.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___24.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___25.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___26.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___27.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___28.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___29.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___30.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___31.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___32.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___33.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___34.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___35.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___36.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich___37.factor)=c("Unchecked","Checked")
levels(data$ki_art___1.factor)=c("Unchecked","Checked")
levels(data$ki_art___2.factor)=c("Unchecked","Checked")
levels(data$ki_art___3.factor)=c("Unchecked","Checked")
levels(data$ki_art___4.factor)=c("Unchecked","Checked")
levels(data$ki_art_ml___1.factor)=c("Unchecked","Checked")
levels(data$ki_art_ml___2.factor)=c("Unchecked","Checked")
levels(data$ki_art_ml___3.factor)=c("Unchecked","Checked")
levels(data$ki_art_ml___4.factor)=c("Unchecked","Checked")
levels(data$ki_art_ml___5.factor)=c("Unchecked","Checked")
levels(data$ki_art_ml___6.factor)=c("Unchecked","Checked")
levels(data$ki_art_dl___1.factor)=c("Unchecked","Checked")
levels(data$ki_art_dl___2.factor)=c("Unchecked","Checked")
levels(data$ki_art_dl___3.factor)=c("Unchecked","Checked")
levels(data$ki_art_dl___4.factor)=c("Unchecked","Checked")
levels(data$ki_art_dl___5.factor)=c("Unchecked","Checked")
levels(data$ki_bereich___1.factor)=c("Unchecked","Checked")
levels(data$ki_bereich___2.factor)=c("Unchecked","Checked")
levels(data$ki_bereich___3.factor)=c("Unchecked","Checked")
levels(data$ki_bereich___4.factor)=c("Unchecked","Checked")
levels(data$ki_bereich___5.factor)=c("Unchecked","Checked")
levels(data$ki_bereich___6.factor)=c("Unchecked","Checked")
levels(data$ki_bereich___7.factor)=c("Unchecked","Checked")
levels(data$bias_ki.factor)=c("Ich habe von Bias in der KI noch nichts gehört","Ich habe von Bias gehört, aber könnte keine konkreten Beispiele nennen","Ich habe von Bias in der KI gehört und kenne spezifische Use-cases")
levels(data$bias_feld___1.factor)=c("Unchecked","Checked")
levels(data$bias_feld___2.factor)=c("Unchecked","Checked")
levels(data$bias_feld___3.factor)=c("Unchecked","Checked")
levels(data$bias_feld___4.factor)=c("Unchecked","Checked")
levels(data$bias_feld___5.factor)=c("Unchecked","Checked")
levels(data$bias_feld___6.factor)=c("Unchecked","Checked")
levels(data$ki_trainingsdaten___1.factor)=c("Unchecked","Checked")
levels(data$ki_trainingsdaten___2.factor)=c("Unchecked","Checked")
levels(data$ki_trainingsdaten___3.factor)=c("Unchecked","Checked")
levels(data$ki_trainingsdaten___4.factor)=c("Unchecked","Checked")
levels(data$ki_daten_quelle___1.factor)=c("Unchecked","Checked")
levels(data$ki_daten_quelle___2.factor)=c("Unchecked","Checked")
levels(data$ki_daten_quelle___3.factor)=c("Unchecked","Checked")
levels(data$ki_daten_quelle___4.factor)=c("Unchecked","Checked")
levels(data$ki_daten_quelle___5.factor)=c("Unchecked","Checked")
levels(data$ki_daten_quelle___6.factor)=c("Unchecked","Checked")
levels(data$nat_internat_daten.factor)=c("Nationale Daten","Internationale Daten","Nationale und internationale Daten","Keine Angabe")
levels(data$standard_daten.factor)=c("Ja","Nein","Keine Angabe")
levels(data$massnahmen_bias___1.factor)=c("Unchecked","Checked")
levels(data$massnahmen_bias___2.factor)=c("Unchecked","Checked")
levels(data$massnahmen_bias___3.factor)=c("Unchecked","Checked")
levels(data$massnahmen_bias___4.factor)=c("Unchecked","Checked")
levels(data$massnahmen_bias___5.factor)=c("Unchecked","Checked")
levels(data$massnahmen_bias___6.factor)=c("Unchecked","Checked")
levels(data$soziodem_daten___1.factor)=c("Unchecked","Checked")
levels(data$soziodem_daten___2.factor)=c("Unchecked","Checked")
levels(data$soziodem_daten___3.factor)=c("Unchecked","Checked")
levels(data$soziodem_daten___4.factor)=c("Unchecked","Checked")
levels(data$soziodem_daten___5.factor)=c("Unchecked","Checked")
levels(data$soziodem_daten___6.factor)=c("Unchecked","Checked")
levels(data$soziodem_daten___7.factor)=c("Unchecked","Checked")
levels(data$soziodem_verwendung___1.factor)=c("Unchecked","Checked")
levels(data$soziodem_verwendung___2.factor)=c("Unchecked","Checked")
levels(data$soziodem_verwendung___3.factor)=c("Unchecked","Checked")
levels(data$soziodem_verwendung___4.factor)=c("Unchecked","Checked")
levels(data$fairness_ki.factor)=c("Gar nicht fair","Kaum fair","Mäßig fair","Fair","Sehr fair","Keine Angabe")
levels(data$fairness_ki_block___1.factor)=c("Unchecked","Checked")
levels(data$fairness_ki_block___2.factor)=c("Unchecked","Checked")
levels(data$fairness_ki_block___3.factor)=c("Unchecked","Checked")
levels(data$fairness_ki_block___4.factor)=c("Unchecked","Checked")
levels(data$fairness_ki_block___5.factor)=c("Unchecked","Checked")
levels(data$fairness_ki_block___6.factor)=c("Unchecked","Checked")
levels(data$fairness_ki_block___7.factor)=c("Unchecked","Checked")
levels(data$fragebogen_fairness_und_ki_2_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$quelle_1.factor)=c("Twitter","Linkedin","Email distribution list of my institution","Personal contact","Other (please specify)","Not specified")
levels(data$arbeitsland_1.factor)=c("Belgium","Germany","France","Italy","Luxembourg","Netherlands","Denmark","Ireland","Greece","Portugal","Spain","Finland","Austria","Sweden","Estonia","Latvia","Lithuania","Malta","Poland","Slovakia","Slovenia","Czech Republic","Hungary","Cyprus","Bulgaria","Romania","Croatia","Other (please specify)","Not specified")
levels(data$geschlecht_1.factor)=c("Female","Male","Diverse","Undefined","Not specified")
levels(data$sektor_1.factor)=c("Science","Clinical Work","Industry","Other (please specify)","Not specified")
levels(data$ki_entwicklung_1.factor)=c("Yes","No, but I have worked on AI-projects in the past","No, but I am planning on it","No, never","Not specified")
levels(data$questionnaire_fairness_and_ai_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$ki_entwicklungsphase_1___1.factor)=c("Unchecked","Checked")
levels(data$ki_entwicklungsphase_1___2.factor)=c("Unchecked","Checked")
levels(data$ki_entwicklungsphase_1___3.factor)=c("Unchecked","Checked")
levels(data$ki_entwicklungsphase_1___4.factor)=c("Unchecked","Checked")
levels(data$ki_entwicklungsphase_1___5.factor)=c("Unchecked","Checked")
levels(data$ki_entwicklungsphase_1___6.factor)=c("Unchecked","Checked")
levels(data$ki_entwicklungsphase_1___7.factor)=c("Unchecked","Checked")
levels(data$ki_entwicklungsphase_1___8.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___1.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___2.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___3.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___4.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___5.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___6.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___7.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___8.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___9.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___10.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___11.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___12.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___13.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___14.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___15.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___16.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___17.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___18.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___19.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___20.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___21.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___22.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___23.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___24.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___25.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___26.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___27.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___28.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___29.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___30.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___31.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___32.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___33.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___34.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___35.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___36.factor)=c("Unchecked","Checked")
levels(data$med_fachbereich_1___37.factor)=c("Unchecked","Checked")
levels(data$ki_art_1___1.factor)=c("Unchecked","Checked")
levels(data$ki_art_1___2.factor)=c("Unchecked","Checked")
levels(data$ki_art_1___3.factor)=c("Unchecked","Checked")
levels(data$ki_art_1___4.factor)=c("Unchecked","Checked")
levels(data$ki_art_ml_1___1.factor)=c("Unchecked","Checked")
levels(data$ki_art_ml_1___2.factor)=c("Unchecked","Checked")
levels(data$ki_art_ml_1___3.factor)=c("Unchecked","Checked")
levels(data$ki_art_ml_1___4.factor)=c("Unchecked","Checked")
levels(data$ki_art_ml_1___5.factor)=c("Unchecked","Checked")
levels(data$ki_art_ml_1___6.factor)=c("Unchecked","Checked")
levels(data$ki_art_dl_1___1.factor)=c("Unchecked","Checked")
levels(data$ki_art_dl_1___2.factor)=c("Unchecked","Checked")
levels(data$ki_art_dl_1___3.factor)=c("Unchecked","Checked")
levels(data$ki_art_dl_1___4.factor)=c("Unchecked","Checked")
levels(data$ki_art_dl_1___5.factor)=c("Unchecked","Checked")
levels(data$ki_bereich_1___1.factor)=c("Unchecked","Checked")
levels(data$ki_bereich_1___2.factor)=c("Unchecked","Checked")
levels(data$ki_bereich_1___3.factor)=c("Unchecked","Checked")
levels(data$ki_bereich_1___4.factor)=c("Unchecked","Checked")
levels(data$ki_bereich_1___5.factor)=c("Unchecked","Checked")
levels(data$ki_bereich_1___6.factor)=c("Unchecked","Checked")
levels(data$ki_bereich_1___7.factor)=c("Unchecked","Checked")
levels(data$bias_ki_1.factor)=c("I have never heard of biases in AI","I have heard of biases in AI but I can not think of concrete examples","I have heard of biases in AI and I do know specific use cases")
levels(data$bias_feld_1___1.factor)=c("Unchecked","Checked")
levels(data$bias_feld_1___2.factor)=c("Unchecked","Checked")
levels(data$bias_feld_1___3.factor)=c("Unchecked","Checked")
levels(data$bias_feld_1___4.factor)=c("Unchecked","Checked")
levels(data$bias_feld_1___5.factor)=c("Unchecked","Checked")
levels(data$bias_feld_1___6.factor)=c("Unchecked","Checked")
levels(data$ki_trainingsdaten_1___1.factor)=c("Unchecked","Checked")
levels(data$ki_trainingsdaten_1___2.factor)=c("Unchecked","Checked")
levels(data$ki_trainingsdaten_1___3.factor)=c("Unchecked","Checked")
levels(data$ki_trainingsdaten_1___4.factor)=c("Unchecked","Checked")
levels(data$ki_daten_quelle_1___1.factor)=c("Unchecked","Checked")
levels(data$ki_daten_quelle_1___2.factor)=c("Unchecked","Checked")
levels(data$ki_daten_quelle_1___3.factor)=c("Unchecked","Checked")
levels(data$ki_daten_quelle_1___4.factor)=c("Unchecked","Checked")
levels(data$ki_daten_quelle_1___5.factor)=c("Unchecked","Checked")
levels(data$ki_daten_quelle_1___6.factor)=c("Unchecked","Checked")
levels(data$nat_internat_daten_1.factor)=c("National data","International data","National and international data","Not specified")
levels(data$standard_daten_1.factor)=c("Yes","No","Not specified")
levels(data$massnahmen_bias_1___1.factor)=c("Unchecked","Checked")
levels(data$massnahmen_bias_1___2.factor)=c("Unchecked","Checked")
levels(data$massnahmen_bias_1___3.factor)=c("Unchecked","Checked")
levels(data$massnahmen_bias_1___4.factor)=c("Unchecked","Checked")
levels(data$massnahmen_bias_1___5.factor)=c("Unchecked","Checked")
levels(data$massnahmen_bias_1___6.factor)=c("Unchecked","Checked")
levels(data$soziodem_daten_1___1.factor)=c("Unchecked","Checked")
levels(data$soziodem_daten_1___2.factor)=c("Unchecked","Checked")
levels(data$soziodem_daten_1___3.factor)=c("Unchecked","Checked")
levels(data$soziodem_daten_1___4.factor)=c("Unchecked","Checked")
levels(data$soziodem_daten_1___5.factor)=c("Unchecked","Checked")
levels(data$soziodem_daten_1___6.factor)=c("Unchecked","Checked")
levels(data$soziodem_daten_1___7.factor)=c("Unchecked","Checked")
levels(data$soziodem_verwendung_1___1.factor)=c("Unchecked","Checked")
levels(data$soziodem_verwendung_1___2.factor)=c("Unchecked","Checked")
levels(data$soziodem_verwendung_1___3.factor)=c("Unchecked","Checked")
levels(data$soziodem_verwendung_1___4.factor)=c("Unchecked","Checked")
levels(data$fairness_ki_1.factor)=c("Not fair at all","Barely fair","Moderately fair","Fair","Very fair","Not specified")
levels(data$fairness_ki_block_1___1.factor)=c("Unchecked","Checked")
levels(data$fairness_ki_block_1___2.factor)=c("Unchecked","Checked")
levels(data$fairness_ki_block_1___3.factor)=c("Unchecked","Checked")
levels(data$fairness_ki_block_1___4.factor)=c("Unchecked","Checked")
levels(data$fairness_ki_block_1___5.factor)=c("Unchecked","Checked")
levels(data$fairness_ki_block_1___6.factor)=c("Unchecked","Checked")
levels(data$fairness_ki_block_1___7.factor)=c("Unchecked","Checked")
levels(data$questionnaire_fairness_and_ai_2_complete.factor)=c("Incomplete","Unverified","Complete")
