.class public Lz4/P;
.super Landroidx/fragment/app/m;

# interfaces
.implements Lt4/d;


# instance fields
.field public A0:Landroid/widget/TextView;

.field public B0:Landroid/widget/TextView;

.field public C0:Landroid/widget/TextView;

.field public D0:Landroid/widget/TextView;

.field public E0:Landroid/widget/TextView;

.field public F0:Landroid/widget/Button;

.field public G0:Landroid/widget/Button;

.field public H0:Landroid/widget/Button;

.field public I0:Landroid/widget/Button;

.field public J0:Landroid/content/Context;

.field public K0:Ljava/lang/String;

.field public L0:Ljava/lang/String;

.field public M0:I

.field public N0:Lib/player/base/helper/w;

.field public O0:Lib/player/models/AppInfoModel;

.field public P0:Lib/player/models/WordModels;

.field public Q0:LE1/t;

.field public R0:Lib/player/base/helper/c;

.field public S0:I

.field public z0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lz4/P;->M0:I

    new-instance v1, Lib/player/models/WordModels;

    invoke-direct {v1}, Lib/player/models/WordModels;-><init>()V

    iput-object v1, p0, Lz4/P;->P0:Lib/player/models/WordModels;

    iput v0, p0, Lz4/P;->S0:I

    return-void
.end method


# virtual methods
.method public final T()V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lz4/P;->N0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lib/player/app/MyApp;->x:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lv4/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x2

    mul-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, La/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[\\n\\r]"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lv4/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "___"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, La/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lv4/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "__"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lv4/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lv4/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lv4/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lv4/c;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lz4/P;->O0:Lib/player/models/AppInfoModel;

    invoke-virtual {v2}, Lib/player/models/AppInfoModel;->getPrice()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lz4/P;->N0:Lib/player/base/helper/w;

    invoke-virtual {v3}, Lib/player/base/helper/w;->x()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lt4/e;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lib/player/models/DataRequestBody;

    invoke-direct {v3, v0}, Lib/player/models/DataRequestBody;-><init>(Ljava/lang/String;)V

    sget-object v0, Lib/player/base/n;->e:Ljava/lang/String;

    iget-object v5, p0, Lz4/P;->O0:Lib/player/models/AppInfoModel;

    invoke-virtual {v5}, Lib/player/models/AppInfoModel;->getPay()Lib/player/models/AppInfoModel$PayModel;

    move-result-object v5

    invoke-virtual {v5}, Lib/player/models/AppInfoModel$PayModel;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s%"

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lib/player/base/n;->j:Ljava/lang/String;

    iget-object v12, p0, Lz4/P;->O0:Lib/player/models/AppInfoModel;

    invoke-virtual {v12}, Lib/player/models/AppInfoModel;->getPay()Lib/player/models/AppInfoModel$PayModel;

    move-result-object v12

    invoke-virtual {v12}, Lib/player/models/AppInfoModel$PayModel;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v6, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v4

    move-object v4, v0

    move-object v0, v2

    const/16 v2, 0xfa0

    move-object v1, p0

    invoke-virtual/range {v0 .. v11}, Lt4/e;->c(Lt4/d;ILib/player/models/DataRequestBody;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lz4/P;->S0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz4/P;->S0:I

    return-void
.end method

.method public final e(Lib/player/models/DataRequestBody;I)V
    .locals 1

    if-eqz p1, :cond_1

    const/16 v0, 0xfa0

    if-ne p2, v0, :cond_1

    const-string p2, "status"

    :try_start_0
    invoke-virtual {p1}, Lib/player/models/DataRequestBody;->getData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lib/player/models/DataRequestBody;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, La/a;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "true"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz4/P;->O0:Lib/player/models/AppInfoModel;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lib/player/models/AppInfoModel;->setIs_trial(I)V

    iget-object p1, p0, Lz4/P;->O0:Lib/player/models/AppInfoModel;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lib/player/models/AppInfoModel;->setIs_google_pay(Z)V

    iget-object p1, p0, Lz4/P;->N0:Lib/player/base/helper/w;

    iget-object p1, p1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "is_changed"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lz4/P;->N0:Lib/player/base/helper/w;

    iget-object p2, p0, Lz4/P;->O0:Lib/player/models/AppInfoModel;

    invoke-virtual {p1, p2}, Lib/player/base/helper/w;->g0(Lib/player/models/AppInfoModel;)V

    iget-object p1, p0, Lz4/P;->I0:Landroid/widget/Button;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->g()Lf/i;

    move-result-object p1

    check-cast p1, Lib/player/base/k;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lz4/P;->O0:Lib/player/models/AppInfoModel;

    invoke-virtual {p1, p2}, Lib/player/base/k;->y(Lib/player/models/AppInfoModel;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    iget p1, p0, Lz4/P;->S0:I

    const/4 p2, 0x3

    if-ge p1, p2, :cond_1

    invoke-virtual {p0}, Lz4/P;->T()V

    :cond_1
    return-void
.end method

.method public final v(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/m;->v(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/m;->R()V

    return-void
.end method

.method public final w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const v0, 0x7f0e005c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lz4/P;->J0:Landroid/content/Context;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/t;->g()Lf/i;

    move-result-object p2

    iput-object p2, p0, Lz4/P;->J0:Landroid/content/Context;

    :cond_0
    iget-object p2, p0, Lz4/P;->J0:Landroid/content/Context;

    if-nez p2, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Lib/player/base/helper/w;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v2}, Lib/player/base/helper/w;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lz4/P;->N0:Lib/player/base/helper/w;

    iget-object p2, p0, Lz4/P;->J0:Landroid/content/Context;

    invoke-static {p2}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lz4/P;->P0:Lib/player/models/WordModels;

    iget-object p2, p0, Lz4/P;->N0:Lib/player/base/helper/w;

    invoke-virtual {p2}, Lib/player/base/helper/w;->v()Lib/player/models/AppInfoModel;

    move-result-object p2

    iput-object p2, p0, Lz4/P;->O0:Lib/player/models/AppInfoModel;

    const p2, 0x7f0b03de

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/P;->z0:Landroid/widget/TextView;

    const p2, 0x7f0b0407

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/P;->A0:Landroid/widget/TextView;

    const p2, 0x7f0b03ef

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/P;->B0:Landroid/widget/TextView;

    const p2, 0x7f0b03df

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/P;->C0:Landroid/widget/TextView;

    const p2, 0x7f0b036d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/P;->E0:Landroid/widget/TextView;

    const p2, 0x7f0b0090

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lz4/P;->F0:Landroid/widget/Button;

    const p2, 0x7f0b00a2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lz4/P;->H0:Landroid/widget/Button;

    const p2, 0x7f0b008d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lz4/P;->G0:Landroid/widget/Button;

    const p2, 0x7f0b0376

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/P;->D0:Landroid/widget/TextView;

    const p2, 0x7f0b009d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lz4/P;->I0:Landroid/widget/Button;

    const p2, 0x7f0b037d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lz4/P;->P0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getScan_qr_code()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/P;->F0:Landroid/widget/Button;

    iget-object v0, p0, Lz4/P;->P0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getStr_continue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/P;->G0:Landroid/widget/Button;

    iget-object v0, p0, Lz4/P;->P0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getCancel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/P;->E0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/P;->P0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getDevice_key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p2, p0, Lz4/P;->M0:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lz4/P;->J0:Landroid/content/Context;

    invoke-static {p2}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lz4/P;->F0:Landroid/widget/Button;

    iget-object v2, p0, Lz4/P;->P0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getOk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lz4/P;->F0:Landroid/widget/Button;

    iget-object v2, p0, Lz4/P;->P0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getOpen_website()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    iget-object p2, p0, Lz4/P;->I0:Landroid/widget/Button;

    iget-object v2, p0, Lz4/P;->P0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getPay_with_google_pay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/P;->H0:Landroid/widget/Button;

    iget-object v2, p0, Lz4/P;->P0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getReload()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0b01ee

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const p2, 0x7f0b01c6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    new-instance v2, Lz4/O;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lz4/O;-><init>(Lz4/P;I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b01c5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    new-instance v2, Lz4/O;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lz4/O;-><init>(Lz4/P;I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lz4/P;->A0:Landroid/widget/TextView;

    iget-object v2, p0, Lz4/P;->K0:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/P;->z0:Landroid/widget/TextView;

    iget-object v2, p0, Lz4/P;->L0:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/P;->B0:Landroid/widget/TextView;

    iget-object v2, p0, Lz4/P;->N0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->M()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/P;->C0:Landroid/widget/TextView;

    iget-object v2, p0, Lz4/P;->N0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, ""

    :try_start_0
    iget-object v2, v2, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences;

    const-string v4, "device_key"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/P;->D0:Landroid/widget/TextView;

    iget-object v2, p0, Lz4/P;->P0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getMac_address()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p2, p0, Lz4/P;->M0:I

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Lz4/P;->F0:Landroid/widget/Button;

    iget-object v0, p0, Lz4/P;->P0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getExit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object p2, p0, Lz4/P;->F0:Landroid/widget/Button;

    new-instance v0, Lz4/O;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lz4/O;-><init>(Lz4/P;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lz4/P;->G0:Landroid/widget/Button;

    new-instance v0, Lz4/O;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lz4/O;-><init>(Lz4/P;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lz4/P;->H0:Landroid/widget/Button;

    new-instance v0, Lz4/O;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lz4/O;-><init>(Lz4/P;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lz4/P;->F0:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    new-instance p2, Lib/player/base/helper/c;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->g()Lf/i;

    move-result-object v0

    new-instance v2, Lv0/f;

    invoke-direct {v2, p0}, Lv0/f;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, v0, v2}, Lib/player/base/helper/c;-><init>(Lf/i;Lib/player/base/helper/b;)V

    iput-object p2, p0, Lz4/P;->R0:Lib/player/base/helper/c;

    iget-object p2, p0, Lz4/P;->I0:Landroid/widget/Button;

    new-instance v0, Lz4/O;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2}, Lz4/O;-><init>(Lz4/P;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lz4/P;->O0:Lib/player/models/AppInfoModel;

    invoke-virtual {v0}, Lib/player/models/AppInfoModel;->getExpiredDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-wide/16 v2, 0x0

    :goto_1
    iget-object p2, p0, Lz4/P;->O0:Lib/player/models/AppInfoModel;

    const/16 v0, 0x8

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lib/player/models/AppInfoModel;->getIs_trial()I

    move-result p2

    const/4 v4, 0x2

    if-eq p2, v4, :cond_7

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    cmp-long p2, v2, v4

    if-lez p2, :cond_5

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lz4/P;->I0:Landroid/widget/Button;

    iget-object v2, p0, Lz4/P;->O0:Lib/player/models/AppInfoModel;

    invoke-virtual {v2}, Lib/player/models/AppInfoModel;->getPay()Lib/player/models/AppInfoModel$PayModel;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lz4/P;->O0:Lib/player/models/AppInfoModel;

    invoke-virtual {v2}, Lib/player/models/AppInfoModel;->getPay()Lib/player/models/AppInfoModel$PayModel;

    move-result-object v2

    invoke-virtual {v2}, Lib/player/models/AppInfoModel$PayModel;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    move v1, v0

    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_7
    :goto_3
    iget-object p2, p0, Lz4/P;->I0:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_4
    invoke-static {}, Lv4/c;->b()Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_5

    :cond_9
    iget-object p2, p0, Lz4/P;->I0:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-object p1
.end method
