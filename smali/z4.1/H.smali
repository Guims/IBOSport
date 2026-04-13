.class public Lz4/H;
.super Landroidx/fragment/app/m;


# instance fields
.field public A0:Landroid/widget/TextView;

.field public B0:Landroid/widget/Button;

.field public C0:Landroid/widget/Button;

.field public D0:Lz4/G;

.field public E0:Ljava/lang/String;

.field public F0:Ljava/lang/String;

.field public G0:Z

.field public z0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz4/H;->G0:Z

    return-void
.end method

.method public static T(Ljava/lang/String;Ljava/lang/String;Z)Lz4/H;
    .locals 1

    new-instance v0, Lz4/H;

    invoke-direct {v0}, Lz4/H;-><init>()V

    iput-object p0, v0, Lz4/H;->E0:Ljava/lang/String;

    iput-object p1, v0, Lz4/H;->F0:Ljava/lang/String;

    iput-boolean p2, v0, Lz4/H;->G0:Z

    return-object v0
.end method


# virtual methods
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

    const p2, 0x7f0b03fb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/H;->z0:Landroid/widget/TextView;

    const p2, 0x7f0b03de

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/H;->A0:Landroid/widget/TextView;

    iget-object p2, p0, Lz4/H;->z0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/H;->E0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/H;->A0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/H;->F0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0b009c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lz4/H;->B0:Landroid/widget/Button;

    const p2, 0x7f0b008d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lz4/H;->C0:Landroid/widget/Button;

    iget-object p2, p0, Lz4/H;->B0:Landroid/widget/Button;

    const-string v0, "Exit"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/H;->C0:Landroid/widget/Button;

    const-string v0, "Play Next"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/H;->z0:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget-boolean p2, p0, Lz4/H;->G0:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lz4/H;->C0:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lz4/H;->B0:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lz4/H;->C0:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :goto_0
    iget-object p2, p0, Lz4/H;->C0:Landroid/widget/Button;

    new-instance v0, Lz4/F;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lz4/F;-><init>(Lz4/H;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lz4/H;->B0:Landroid/widget/Button;

    new-instance v0, Lz4/F;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lz4/F;-><init>(Lz4/H;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
