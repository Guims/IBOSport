.class public Lz4/z;
.super Landroidx/fragment/app/m;


# instance fields
.field public A0:Ljava/lang/String;

.field public B0:Ljava/lang/String;

.field public C0:Ljava/lang/String;

.field public D0:Landroid/widget/TextView;

.field public E0:Landroid/widget/TextView;

.field public F0:Landroid/widget/TextView;

.field public G0:Landroid/widget/ImageView;

.field public H0:Landroid/view/View;

.field public I0:Ljava/lang/String;

.field public J0:Ljava/lang/String;

.field public K0:Ljava/lang/String;

.field public z0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lz4/z;->I0:Ljava/lang/String;

    iput-object v0, p0, Lz4/z;->J0:Ljava/lang/String;

    iput-object v0, p0, Lz4/z;->K0:Ljava/lang/String;

    return-void
.end method

.method public static T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lz4/z;
    .locals 1

    new-instance v0, Lz4/z;

    invoke-direct {v0}, Lz4/z;-><init>()V

    iput-object p0, v0, Lz4/z;->z0:Ljava/lang/String;

    iput-object p1, v0, Lz4/z;->A0:Ljava/lang/String;

    iput-object p2, v0, Lz4/z;->B0:Ljava/lang/String;

    iput-object p3, v0, Lz4/z;->C0:Ljava/lang/String;

    iput-object p5, v0, Lz4/z;->I0:Ljava/lang/String;

    iput-object p6, v0, Lz4/z;->J0:Ljava/lang/String;

    iput-object p4, v0, Lz4/z;->K0:Ljava/lang/String;

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
    .locals 8

    const v0, 0x7f0e0035

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b03f2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/z;->D0:Landroid/widget/TextView;

    const p2, 0x7f0b03de

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/z;->E0:Landroid/widget/TextView;

    const p2, 0x7f0b03fd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/z;->F0:Landroid/widget/TextView;

    const p2, 0x7f0b01ec

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lz4/z;->G0:Landroid/widget/ImageView;

    const p2, 0x7f0b0424

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lz4/z;->H0:Landroid/view/View;

    new-instance v0, LB4/u;

    const/16 v1, 0x13

    invoke-direct {v0, v1, p0}, LB4/u;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lz4/z;->D0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/z;->z0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/z;->E0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/z;->A0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/z;->F0:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lz4/z;->C0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz4/z;->K0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz4/z;->I0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz4/z;->J0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lz4/z;->G0:Landroid/widget/ImageView;

    iget-object v3, p0, Lz4/z;->B0:Ljava/lang/String;

    const/16 v6, 0x29e

    const/16 v7, 0x3e8

    const v4, 0x7f0801de

    const v5, 0x7f0801dd

    invoke-static/range {v1 .. v7}, LQ5/d;->n(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIII)V

    return-object p1
.end method
