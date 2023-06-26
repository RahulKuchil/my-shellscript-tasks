read -p "Enter the software name to be displayed: " softwares

case "$softwares" in
    "python")
        python --version
        ;;
    "java")
        java --version
        ;;
    "ansible")
        ansible --version
        ;;
    "node")
        node --version
        ;;
    *)
        echo "This software is not installed in your system "
        ;;
esac

