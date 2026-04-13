.class public Lz4/n;
.super Landroidx/fragment/app/m;


# instance fields
.field public A0:Landroid/widget/TextView;

.field public B0:Landroid/widget/Button;

.field public C0:Landroid/widget/Button;

.field public D0:Lz4/m;

.field public E0:Ljava/lang/String;

.field public F0:Ljava/lang/String;

.field public G0:Ljava/lang/String;

.field public H0:Ljava/lang/String;

.field public z0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    return-void
.end method

.method public static T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lz4/n;
    .locals 1

    new-instance v0, Lz4/n;

    invoke-direct {v0}, Lz4/n;-><init>()V

    iput-object p0, v0, Lz4/n;->E0:Ljava/lang/String;

    iput-object p1, v0, Lz4/n;->F0:Ljava/lang/String;

    iput-object p2, v0, Lz4/n;->G0:Ljava/lang/String;

    iput-object p3, v0, Lz4/n;->H0:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/m;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lz4/n;->D0:Lz4/m;

    invoke-interface {p1}, Lz4/m;->F()V

    return-void
.end method

.method public final v(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/m;->v(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/m;->R()V

    return-void
.end method

.method public final w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0e0049

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lz4/l;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lz4/l;-><init>(Lz4/n;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b03fb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/n;->z0:Landroid/widget/TextView;

    const p2, 0x7f0b03de

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/n;->A0:Landroid/widget/TextView;

    iget-object p2, p0, Lz4/n;->z0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/n;->E0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/n;->A0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/n;->F0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0b009c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lz4/n;->B0:Landroid/widget/Button;

    const p2, 0x7f0b008d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lz4/n;->C0:Landroid/widget/Button;

    new-instance v0, Lz4/l;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lz4/l;-><init>(Lz4/n;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lz4/n;->B0:Landroid/widget/Button;

    new-instance v0, Lz4/l;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lz4/l;-><init>(Lz4/n;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lz4/n;->B0:Landroid/widget/Button;

    iget-object v0, p0, Lz4/n;->G0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/n;->C0:Landroid/widget/Button;

    iget-object v0, p0, Lz4/n;->H0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Landroidx/fragment/app/m;->u0:Landroid/app/Dialog;

    new-instance v0, Lz4/c;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lz4/c;-><init>(Landroidx/fragment/app/m;I)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object p2, p0, Lz4/n;->C0:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    return-object p1
.end method
