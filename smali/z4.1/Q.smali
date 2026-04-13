.class public Lz4/Q;
.super Landroidx/fragment/app/m;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A0:Landroid/widget/TextView;

.field public B0:Landroid/widget/TextView;

.field public C0:Landroid/widget/TextView;

.field public D0:Landroid/widget/TextView;

.field public E0:Landroid/widget/TextView;

.field public F0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public G0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public H0:Landroid/widget/ImageButton;

.field public I0:Landroid/widget/ImageButton;

.field public J0:Landroid/widget/ImageView;

.field public K0:Landroid/widget/ImageView;

.field public L0:Lib/player/base/helper/w;

.field public M0:I

.field public N0:I

.field public O0:I

.field public P0:I

.field public Q0:Lib/player/models/WordModels;

.field public R0:Ljava/lang/String;

.field public S0:Ljava/lang/String;

.field public z0:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lz4/Q;->N0:I

    const/16 v0, 0xc

    iput v0, p0, Lz4/Q;->O0:I

    const/16 v0, 0x3c

    iput v0, p0, Lz4/Q;->P0:I

    new-instance v0, Lib/player/models/WordModels;

    invoke-direct {v0}, Lib/player/models/WordModels;-><init>()V

    iput-object v0, p0, Lz4/Q;->Q0:Lib/player/models/WordModels;

    return-void
.end method


# virtual methods
.method public final T(Z)V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object v0

    invoke-static {v0, v0}, LB/f;->i(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v1

    const-string v2, "fragment_subtitle_color"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {v1, v3, p1, v0}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lz4/Q;->R0:Ljava/lang/String;

    iget-object v4, p0, Lz4/Q;->S0:Ljava/lang/String;

    iget v5, p0, Lz4/Q;->M0:I

    new-instance v6, Lz4/L;

    invoke-direct {v6}, Lz4/L;-><init>()V

    iput-object v1, v6, Lz4/L;->K0:Landroid/content/Context;

    iput-boolean p1, v6, Lz4/L;->J0:Z

    iput-object v3, v6, Lz4/L;->N0:Ljava/lang/String;

    iput-object v4, v6, Lz4/L;->O0:Ljava/lang/String;

    iput v5, v6, Lz4/L;->P0:I

    new-instance v1, Lib/player/base/helper/y;

    const/4 v3, 0x5

    invoke-direct {v1, v3, p0, p1}, Lib/player/base/helper/y;-><init>(ILjava/lang/Object;Z)V

    iput-object v1, v6, Lz4/L;->M0:Lib/player/base/helper/y;

    invoke-virtual {v6, v0, v2}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0268

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lz4/Q;->T(Z)V

    return-void

    :cond_0
    const v0, 0x7f0b0250

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v1}, Lz4/Q;->T(Z)V

    return-void

    :cond_1
    const v0, 0x7f0b0099

    const-string v2, "pt"

    if-ne p1, v0, :cond_2

    iget p1, p0, Lz4/Q;->M0:I

    iget v0, p0, Lz4/Q;->O0:I

    iget v1, p0, Lz4/Q;->N0:I

    add-int/2addr v0, v1

    if-le p1, v0, :cond_5

    sub-int/2addr p1, v1

    iput p1, p0, Lz4/Q;->M0:I

    iget-object p1, p0, Lz4/Q;->E0:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lz4/Q;->M0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const v0, 0x7f0b00a0

    if-ne p1, v0, :cond_3

    iget p1, p0, Lz4/Q;->M0:I

    iget v0, p0, Lz4/Q;->P0:I

    iget v1, p0, Lz4/Q;->N0:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_5

    add-int/2addr p1, v1

    iput p1, p0, Lz4/Q;->M0:I

    iget-object p1, p0, Lz4/Q;->E0:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lz4/Q;->M0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    const v0, 0x7f0b009c

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lz4/Q;->L0:Lib/player/base/helper/w;

    iget v0, p0, Lz4/Q;->M0:I

    invoke-virtual {p1, v0}, Lib/player/base/helper/w;->u0(I)V

    iget-object p1, p0, Lz4/Q;->L0:Lib/player/base/helper/w;

    iget-object v0, p0, Lz4/Q;->R0:Ljava/lang/String;

    iget-object p1, p1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "subtitle_color"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lz4/Q;->L0:Lib/player/base/helper/w;

    iget-object v0, p0, Lz4/Q;->S0:Ljava/lang/String;

    iget-object p1, p1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "subtitle_bg_color"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0, v1, v1}, Landroidx/fragment/app/m;->P(ZZ)V

    return-void

    :cond_4
    const v0, 0x7f0b008d

    if-ne p1, v0, :cond_5

    invoke-virtual {p0, v1, v1}, Landroidx/fragment/app/m;->P(ZZ)V

    :cond_5
    return-void
.end method

.method public final v(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/m;->v(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/m;->R()V

    return-void
.end method

.method public final w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v0, 0x7f0e005d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lib/player/base/helper/w;

    iget-object v0, p0, Lz4/Q;->z0:Landroid/content/Context;

    invoke-direct {p2, v0, v1}, Lib/player/base/helper/w;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lz4/Q;->L0:Lib/player/base/helper/w;

    iget-object p2, p0, Lz4/Q;->z0:Landroid/content/Context;

    invoke-static {p2}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lz4/Q;->Q0:Lib/player/models/WordModels;

    iget-object p2, p0, Lz4/Q;->z0:Landroid/content/Context;

    invoke-static {p2}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    iput p2, p0, Lz4/Q;->N0:I

    const/16 p2, 0xc

    iput p2, p0, Lz4/Q;->O0:I

    const/16 p2, 0x3e8

    iput p2, p0, Lz4/Q;->P0:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    iput p2, p0, Lz4/Q;->N0:I

    const/4 p2, 0x6

    iput p2, p0, Lz4/Q;->O0:I

    const/16 p2, 0x30

    iput p2, p0, Lz4/Q;->P0:I

    :goto_0
    iget-object p2, p0, Lz4/Q;->L0:Lib/player/base/helper/w;

    invoke-virtual {p2}, Lib/player/base/helper/w;->Z()I

    move-result p2

    iput p2, p0, Lz4/Q;->M0:I

    iget-object p2, p0, Lz4/Q;->L0:Lib/player/base/helper/w;

    invoke-virtual {p2}, Lib/player/base/helper/w;->Y()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lz4/Q;->R0:Ljava/lang/String;

    iget-object p2, p0, Lz4/Q;->L0:Lib/player/base/helper/w;

    invoke-virtual {p2}, Lib/player/base/helper/w;->X()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lz4/Q;->S0:Ljava/lang/String;

    const p2, 0x7f0b03e9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/Q;->A0:Landroid/widget/TextView;

    const p2, 0x7f0b0380

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/Q;->B0:Landroid/widget/TextView;

    const p2, 0x7f0b0381

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/Q;->C0:Landroid/widget/TextView;

    const p2, 0x7f0b036a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/Q;->D0:Landroid/widget/TextView;

    const p2, 0x7f0b0409

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/Q;->E0:Landroid/widget/TextView;

    const p2, 0x7f0b0268

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lz4/Q;->F0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p2, 0x7f0b0250

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lz4/Q;->G0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p2, 0x7f0b0099

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lz4/Q;->H0:Landroid/widget/ImageButton;

    const p2, 0x7f0b00a0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lz4/Q;->I0:Landroid/widget/ImageButton;

    const p2, 0x7f0b01f5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lz4/Q;->J0:Landroid/widget/ImageView;

    const p2, 0x7f0b01d6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lz4/Q;->K0:Landroid/widget/ImageView;

    iget-object p2, p0, Lz4/Q;->F0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lz4/Q;->G0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lz4/Q;->H0:Landroid/widget/ImageButton;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lz4/Q;->I0:Landroid/widget/ImageButton;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b009c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b008d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lz4/Q;->B0:Landroid/widget/TextView;

    iget-object v2, p0, Lz4/Q;->Q0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getSubtitel_size()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lz4/Q;->A0:Landroid/widget/TextView;

    iget-object v2, p0, Lz4/Q;->Q0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getSubtitle_settings()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lz4/Q;->C0:Landroid/widget/TextView;

    iget-object v2, p0, Lz4/Q;->Q0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getSubtitel_color()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lz4/Q;->D0:Landroid/widget/TextView;

    iget-object v2, p0, Lz4/Q;->Q0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getSubtitel_background()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lz4/Q;->Q0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getOk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/Q;->Q0:Lib/player/models/WordModels;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getCancel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/Q;->E0:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lz4/Q;->M0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/Q;->J0:Landroid/widget/ImageView;

    iget-object v0, p0, Lz4/Q;->R0:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p2, p0, Lz4/Q;->K0:Landroid/widget/ImageView;

    iget-object v0, p0, Lz4/Q;->S0:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p1
.end method
