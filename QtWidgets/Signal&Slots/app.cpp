#include "app.h"

#include <QSlider>
#include <QSpinBox>
#include <QVBoxLayout>

MainWindow::MainWindow(QWidget *parent) : QWidget(parent) {
    auto outer = new QVBoxLayout(this);

    auto slider = new QSlider(Qt::Horizontal);
    slider->setRange(0, 100);
    outer->addWidget(slider);

    auto spinBox = new QSpinBox;
    spinBox->setRange(0, 100);
    // spinBox->setReadOnly(true);
    outer->addWidget(spinBox);

    QWidget::connect(slider, &QSlider::valueChanged,
                     spinBox, &QSpinBox::setValue);

    // QWidget::connect(spinBox, &QSpinBox::valueChanged, // ERROR: Overloaded function
    //                  slider, &QSlider::setValue); 

    /**
     * NOTE:
     * QSpinBox::valueChanged is overloaded
     * void valueChanged(int);
     * void valueChanged(const QString &);
     */
    QWidget::connect(spinBox, static_cast<void(QSpinBox::*)(int)>(&QSpinBox::valueChanged),
                     slider, &QSlider::setValue);

    // Qt4
    // QWidget::connect(spinBox, SIGNAL(valueChanged(int)),
    //              slider, SLOT(setValue(int)));

    // this->setLayout(outer);
}
