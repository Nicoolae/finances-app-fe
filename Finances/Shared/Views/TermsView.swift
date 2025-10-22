import SwiftUI

struct TermsView: View {
    // MARK: - Properties
       
       @Environment(\.dismiss) var dismiss
       
       // MARK: - Body
       
       var body: some View {
           NavigationStack {
               ZStack {
                   ScrollView {
                       VStack(alignment: .leading, spacing: 24) {
                           // MARK: - Header
                           
                           VStack(alignment: .leading, spacing: 8) {
                               Text("Termini e Condizioni d'Uso")
                                   .font(.largeTitle)
                                   .fontWeight(.bold)
                                   .foregroundStyle(
                                       LinearGradient(
                                           colors: [Color.appPrimary, Color.appAccent],
                                           startPoint: .leading,
                                           endPoint: .trailing
                                       )
                                   )
                               
                               Text("Ultimo aggiornamento: 22 ottobre 2025")
                                   .font(.caption)
                                   .foregroundStyle(Color.appBackground)
                           }
                           
                           Divider()
                               .background(Color.appBorder)
                           
                           // MARK: - Premessa
                           
                           sectionView(
                               title: "PREMESSA",
                               content: """
                               I presenti Termini e Condizioni d'Uso (di seguito, i "Termini") disciplinano l'accesso e l'utilizzo dell'applicazione mobile denominata "Finances" (di seguito, l'"Applicazione" o l'"App"), destinata alla gestione delle finanze personali.
                               
                               L'utilizzo dell'Applicazione implica l'accettazione integrale e incondizionata dei presenti Termini. Qualora l'Utente non intenda accettare, in tutto o in parte, i presenti Termini, è pregato di astenersi dall'utilizzare l'Applicazione.
                               """
                           )
                           
                           // MARK: - Articolo 1
                           
                           sectionView(
                               title: "ARTICOLO 1 - DEFINIZIONI",
                               content: """
                               Ai fini dei presenti Termini, si intende per:
                               
                               • "Utente": qualsiasi persona fisica che accede e utilizza l'Applicazione per scopi personali e non commerciali.
                               
                               • "Sviluppatore": il soggetto che ha sviluppato e mette a disposizione l'Applicazione.
                               
                               • "Dati Personali": qualsiasi informazione relativa all'Utente identificato o identificabile, ai sensi del Regolamento (UE) 2016/679 (GDPR).
                               
                               • "Dati Finanziari": informazioni di natura economica e finanziaria inserite dall'Utente nell'Applicazione, inclusi ma non limitati a: transazioni, conti bancari, budget, risparmi e investimenti.
                               """
                           )
                           
                           // MARK: - Articolo 2
                           
                           sectionView(
                               title: "ARTICOLO 2 - OGGETTO E AMBITO",
                               content: """
                               L'Applicazione è uno strumento software destinato esclusivamente alla gestione personale delle finanze dell'Utente.
                               
                               L'Applicazione consente all'Utente di:
                               • Registrare e monitorare transazioni finanziarie personali
                               • Gestire budget e obiettivi di risparmio
                               • Visualizzare report e statistiche relative alle proprie finanze
                               • Organizzare categorie di spesa e reddito
                               
                               L'utilizzo dell'Applicazione è consentito esclusivamente per finalità personali e non commerciali.
                               """
                           )
                           
                           // MARK: - Articolo 3
                           
                           sectionView(
                               title: "ARTICOLO 3 - REGISTRAZIONE E ACCESSO",
                               content: """
                               L'accesso all'Applicazione può richiedere la creazione di un account personale mediante la procedura di registrazione.
                               
                               L'Utente si impegna a:
                               • Fornire informazioni veritiere, accurate e complete
                               • Mantenere riservate le proprie credenziali di accesso
                               • Non condividere il proprio account con terzi
                               • Notificare tempestivamente allo Sviluppatore qualsiasi uso non autorizzato
                               
                               L'Utente è il solo responsabile di tutte le attività svolte tramite il proprio account.
                               """
                           )
                           
                           // MARK: - Articolo 4
                           
                           sectionView(
                               title: "ARTICOLO 4 - LICENZA D'USO",
                               content: """
                               Lo Sviluppatore concede all'Utente una licenza personale, non esclusiva, non trasferibile e revocabile per l'utilizzo dell'Applicazione conformemente ai presenti Termini.
                               
                               È espressamente vietato all'Utente:
                               • Copiare, modificare, distribuire, vendere o concedere in sublicenza l'Applicazione
                               • Decompilare, disassemblare o effettuare reverse engineering sul codice sorgente
                               • Rimuovere o alterare avvisi di copyright o marchi
                               • Utilizzare l'Applicazione per finalità illecite
                               • Tentare di accedere a sistemi non autorizzati
                               """
                           )
                           
                           // MARK: - Articolo 5
                           
                           sectionView(
                               title: "ARTICOLO 5 - PRIVACY E DATI",
                               content: """
                               ARCHIVIAZIONE LOCALE
                               I Dati Finanziari inseriti dall'Utente sono archiviati esclusivamente sul dispositivo locale. Lo Sviluppatore non raccoglie, non accede e non trasmette tali dati a server esterni o servizi di terze parti.
                               
                               RESPONSABILITÀ DELL'UTENTE
                               L'Utente è il solo responsabile della custodia e della sicurezza dei propri dati. Si raccomanda di:
                               • Effettuare backup regolari dei dati
                               • Proteggere il dispositivo con password o sistemi biometrici
                               • Non condividere l'accesso al dispositivo con soggetti non autorizzati
                               
                               CONFORMITÀ AL GDPR
                               Lo Sviluppatore tratta eventuali Dati Personali in conformità al Regolamento (UE) 2016/679 (GDPR) e alla normativa nazionale applicabile.
                               
                               DIRITTI DELL'UTENTE
                               L'Utente ha il diritto di accedere, rettificare, cancellare i propri dati e opporsi al trattamento. Per esercitare tali diritti: support@finances.app
                               """
                           )
                           
                           // MARK: - Articolo 6
                           
                           sectionView(
                               title: "ARTICOLO 6 - DISCLAIMER E LIMITAZIONI",
                               content: """
                               NATURA INFORMATIVA
                               L'Applicazione è fornita esclusivamente a scopo informativo. Non costituisce consulenza finanziaria, fiscale o legale, né raccomandazione di investimento.
                               
                               ASSENZA DI GARANZIE
                               L'Applicazione è fornita "così com'è" (as-is) senza garanzie di alcun tipo, incluse accuratezza, affidabilità o assenza di errori.
                               
                               LIMITAZIONE DI RESPONSABILITÀ
                               Nei limiti consentiti dalla legge, lo Sviluppatore non sarà responsabile per:
                               • Perdite finanziarie derivanti da decisioni prese sulla base dei dati
                               • Danni diretti, indiretti o consequenziali
                               • Perdita di dati o danneggiamento del dispositivo
                               • Interruzioni del servizio o malfunzionamenti
                               
                               L'Utente riconosce di essere il solo responsabile delle proprie decisioni finanziarie.
                               """
                           )
                           
                           // MARK: - Articolo 7
                           
                           sectionView(
                               title: "ARTICOLO 7 - PROPRIETÀ INTELLETTUALE",
                               content: """
                               Tutti i diritti di proprietà intellettuale relativi all'Applicazione (codice, design, grafica, loghi, testi) sono di esclusiva proprietà dello Sviluppatore.
                               
                               È vietata qualsiasi riproduzione, distribuzione o utilizzo commerciale senza autorizzazione scritta.
                               
                               I Dati Finanziari e i Contenuti generati dall'Utente rimangono di sua esclusiva proprietà.
                               """
                           )
                           
                           // MARK: - Articolo 8
                           
                           sectionView(
                               title: "ARTICOLO 8 - MODIFICHE",
                               content: """
                               Lo Sviluppatore si riserva il diritto di modificare l'Applicazione e i presenti Termini in qualsiasi momento.
                               
                               Le modifiche ai Termini saranno effettive immediatamente dopo la pubblicazione nell'Applicazione.
                               
                               L'uso continuato dell'Applicazione dopo le modifiche costituisce accettazione delle stesse.
                               """
                           )
                           
                           // MARK: - Articolo 9
                           
                           sectionView(
                               title: "ARTICOLO 9 - DURATA E RISOLUZIONE",
                               content: """
                               I presenti Termini hanno durata indeterminata e rimarranno in vigore fintanto che l'Utente utilizzerà l'Applicazione.
                               
                               L'Utente può cessare l'utilizzo in qualsiasi momento disinstallando l'Applicazione.
                               
                               Lo Sviluppatore può risolvere il rapporto in caso di violazione dei Termini.
                               """
                           )
                           
                           // MARK: - Articolo 10
                           
                           sectionView(
                               title: "ARTICOLO 10 - LEGGE APPLICABILE",
                               content: """
                               I presenti Termini sono disciplinati dalla legge italiana.
                               
                               Per controversie derivanti dai presenti Termini sarà competente il Foro di Milano, salvo diverse disposizioni inderogabili di legge.
                               
                               Per consumatori si applica la normativa a tutela del consumatore (D.Lgs. 206/2005).
                               """
                           )
                           
                           // MARK: - Articolo 11
                           
                           sectionView(
                               title: "ARTICOLO 11 - CONTATTI",
                               content: """
                               Per comunicazioni, richieste o reclami relativi ai presenti Termini:
                               
                               Email: nicolaeboldisor21@gmail.com
                               Sviluppatore: Nicoolae
                               """
                           )
                           
                           // MARK: - Footer
                           
                           VStack(spacing: 12) {
                               Divider()
                                   .background(Color.appBorder)
                               
                               Text("© 2025 Finances App")
                                   .font(.caption)
                                   .foregroundStyle(Color.appTextSecondary)
                               
                               Text("Tutti i diritti riservati")
                                   .font(.caption2)
                                   .foregroundStyle(Color.appTextSecondary.opacity(0.7))
                           }
                           .frame(maxWidth: .infinity)
                           .padding(.top, 20)
                           
                           Spacer(minLength: 40)
                       }
                       .padding(24)
                   }
               }
               .navigationBarTitleDisplayMode(.inline)
               .toolbar {
                   ToolbarItem(placement: .topBarTrailing) {
                       Button {
                           dismiss()
                       } label: {
                           Image(systemName: "xmark.circle.fill")
                               .font(.title2)
                               .foregroundStyle(Color.appTextSecondary)
                       }
                   }
               }
           }
       }
       
       // MARK: - Section Views
       
       /// Standard section with title and content
       @ViewBuilder
       private func sectionView(title: String, content: String) -> some View {
           VStack(alignment: .leading, spacing: 12) {
               Text(title)
                   .font(.headline)
                   .fontWeight(.semibold)
                   .foregroundStyle(Color.appPrimary)
               
               Text(content)
                   .font(.subheadline)
                   .foregroundStyle(Color.appBackground)
                   .lineSpacing(4)
           }
       }
   }

   // MARK: - Preview

   #Preview {
       TermsView()
   }
