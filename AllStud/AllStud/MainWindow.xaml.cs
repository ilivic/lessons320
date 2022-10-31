using System.Collections.ObjectModel;
using System.Windows;
using System.IO;


namespace AllStud
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public static ObservableCollection<InversionDotaGamers> Gamers 
        {
            get;
            set;
        }
        string PathInfo = "";
        public MainWindow(string Path)
        {
            InitializeComponent();
            
            Gamers = new ObservableCollection<InversionDotaGamers>();
            
            PathInfo = Path;
            Run();
            Rf();
        }
        public void Rf()
        {
            ListDotaInfosGamer.ItemsSource = Gamers;
        }
        public void Run()
        {
            StreamReader reader = new StreamReader($@"\\{PathInfo}\Index.io");
            var ListData = reader.ReadToEnd().Split(';');
            for (int i = 0; i != ListData.Length - 1; i++)
            {
                InversionDotaGamers NewGamer = new InversionDotaGamers()
                {
                    Name = ListData[i].Split('%')[0],
                    MMR = ListData[i].Split('%')[1],
                    FH = ListData[i].Split('%')[2]
                };
                Gamers.Add(NewGamer);
            }
            
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            InversionDotaGamers NewGamer = new InversionDotaGamers()
            {
                Name = TxtName.Text,
                MMR = TxtMMR.Text,
                FH = TxtHF.Text,
                Rege = TxtRg.Text
            };
            Gamers.Add(NewGamer);
            TxtHF.Text = "";
            TxtMMR.Text = "";
            TxtName.Text = "";

            Rf();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            StreamWriter writer = new StreamWriter($@"\\{PathInfo}\Index.io");
           // MessageBox.Show($@"\\{PathInfo}\Index.io");
            for (int i = 0; i != Gamers.Count; i++)
            {
                writer.WriteLine(Gamers[i].Name + "%" +Gamers[i].MMR + "%"+Gamers[i].FH + ";");
            }
            writer.Close();
            
        }
    }
}
