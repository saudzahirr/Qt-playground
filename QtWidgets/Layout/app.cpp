#include "app.h"

#include <QLabel>
#include <QTextEdit>
#include <QPushButton>
#include <QVBoxLayout>
#include <QHBoxLayout>

MainWindow::MainWindow(QWidget *parent) : QWidget(parent) {
    auto outer = new QVBoxLayout(this);

    auto noteLabel = new QLabel("Note:");
    outer->addWidget(noteLabel);

    auto noteEdit = new QTextEdit;
    outer->addWidget(noteEdit);

    auto inner = new QHBoxLayout;
    outer->addLayout(inner);

    auto clearButton = new QPushButton("Clear");
    inner->addWidget(clearButton);

    auto saveButton = new QPushButton("Save");
    inner->addWidget(saveButton);

    // this->setLayout(outer);
}
