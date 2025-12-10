#include "app.h"

#include <QtCore>
#include <QString>
#include <QLineEdit>
#include <QTextEdit>
#include <QPushButton>
#include <QVBoxLayout>

// Functor
struct Logger {
    public:
        Logger(const QString& prefix): m_prefix(prefix) {}

        void operator() (const QString& msg) {
            qDebug() << m_prefix + msg;
        }

    private:
        QString m_prefix;

};

MainWindow::MainWindow(QWidget *parent) : QWidget(parent) {
    auto outer = new QVBoxLayout(this);

    auto lineEdit = new QLineEdit;
    outer->addWidget(lineEdit);

    auto textEdit = new QTextEdit;
    outer->addWidget(textEdit);

    auto button = new QPushButton("Press!");
    outer->addWidget(button);

    /**
     * Using a functor
     */
    QObject::connect(lineEdit, &QLineEdit::textChanged,
                     Logger("INFO: "));

    /**
     * Using lambda
     */
    QObject::connect(button, &QPushButton::pressed, [button]{button->setText("Release!");});
    QObject::connect(button, &QPushButton::released, [button]{button->setText("Press!");});
}
