.class public final Lr1/k;
.super Lv1/X;


# instance fields
.field public final u:Landroid/widget/TextView;

.field public final v:Landroid/widget/TextView;

.field public final w:Landroid/widget/ImageView;

.field public final synthetic x:Lr1/r;


# direct methods
.method public constructor <init>(Lr1/r;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lr1/k;->x:Lr1/r;

    invoke-direct {p0, p2}, Lv1/X;-><init>(Landroid/view/View;)V

    sget p1, Lk0/C;->a:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    const p1, 0x7f0b0147

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lr1/k;->u:Landroid/widget/TextView;

    const p1, 0x7f0b015d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lr1/k;->v:Landroid/widget/TextView;

    const p1, 0x7f0b0145

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lr1/k;->w:Landroid/widget/ImageView;

    new-instance p1, LB4/u;

    const/16 v0, 0xc

    invoke-direct {p1, v0, p0}, LB4/u;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
