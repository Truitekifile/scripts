import sys

def display_help():
    """Affiche les commandes d'aide du module."""
    help_text = """
    Commandes disponibles pour ce module :
    --help      : Affiche cette aide
    --test      : Exécute le test et affiche 'test'
    """
    print(help_text)

def run_test():
    """Exécute le test et affiche 'test'."""
    print("test")

def main():
    if len(sys.argv) > 1:
        option = sys.argv[1]
        if option == '--help':
            display_help()
        elif option == '--test':
            run_test()
        else:
            print(f"Option inconnue : {option}")
            display_help()
    else:
        print("Aucune option fournie. Utilisez '--help' pour les commandes disponibles.")

if __name__ == "__main__":
    main()
