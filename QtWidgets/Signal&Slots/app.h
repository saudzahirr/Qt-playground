#ifndef APP_H
#define APP_H

#include <QWidget>

class MainWindow : public QWidget {
    Q_OBJECT
    public:
        explicit MainWindow(QWidget *parent = nullptr);

};

#endif // APP_H
