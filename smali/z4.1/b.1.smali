.class public Lz4/b;
.super Landroidx/fragment/app/m;


# instance fields
.field public A0:Landroid/widget/TextView;

.field public B0:Landroid/widget/TextView;

.field public C0:Landroid/widget/TextView;

.field public D0:Landroid/widget/TextView;

.field public E0:Landroid/widget/TextView;

.field public F0:Landroid/widget/TextView;

.field public G0:Landroid/widget/TextView;

.field public H0:Landroid/widget/TextView;

.field public I0:Landroid/widget/TextView;

.field public J0:Landroid/widget/TextView;

.field public K0:Landroid/widget/TextView;

.field public L0:Landroid/widget/TextView;

.field public M0:Landroid/widget/TextView;

.field public N0:Landroid/widget/TextView;

.field public O0:Landroid/view/View;

.field public P0:Landroid/widget/Button;

.field public Q0:Lib/player/base/helper/w;

.field public R0:Lib/player/models/AppInfoModel;

.field public S0:Lib/player/models/LoginModel;

.field public T0:Lib/player/models/WordModels;

.field public U0:Lib/player/pages/MainActivity;

.field public final V0:Ljava/text/SimpleDateFormat;

.field public W0:J

.field public X0:Lib/player/pages/c;

.field public z0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    new-instance v0, Lib/player/models/WordModels;

    invoke-direct {v0}, Lib/player/models/WordModels;-><init>()V

    iput-object v0, p0, Lz4/b;->T0:Lib/player/models/WordModels;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lz4/b;->V0:Ljava/text/SimpleDateFormat;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lz4/b;->W0:J

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/m;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lz4/b;->X0:Lib/player/pages/c;

    iget-object p1, p1, Lib/player/pages/c;->b:Lib/player/pages/MainActivity;

    iget-object p1, p1, Lib/player/pages/MainActivity;->p0:Landroid/widget/ImageView;

    const v0, 0x7f080169

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final v(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/m;->v(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/m;->R()V

    return-void
.end method

.method public final w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const-string v0, ""

    const v1, 0x7f0e0042

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b0369

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/b;->z0:Landroid/widget/TextView;

    const p2, 0x7f0b0385

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/b;->A0:Landroid/widget/TextView;

    const p2, 0x7f0b0375

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/b;->B0:Landroid/widget/TextView;

    const p2, 0x7f0b037f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/b;->C0:Landroid/widget/TextView;

    const p2, 0x7f0b036f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/b;->D0:Landroid/widget/TextView;

    const p2, 0x7f0b036d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/b;->F0:Landroid/widget/TextView;

    const p2, 0x7f0b036c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p2, 0x7f0b0378

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p2, 0x7f0b037c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/b;->E0:Landroid/widget/TextView;

    const p2, 0x7f0b0424

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lz4/b;->O0:Landroid/view/View;

    const p2, 0x7f0b040b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/b;->G0:Landroid/widget/TextView;

    const p2, 0x7f0b03ee

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/b;->H0:Landroid/widget/TextView;

    const p2, 0x7f0b0405

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/b;->I0:Landroid/widget/TextView;

    const p2, 0x7f0b03e4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/b;->J0:Landroid/widget/TextView;

    const p2, 0x7f0b03df

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/b;->N0:Landroid/widget/TextView;

    const p2, 0x7f0b03d8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/b;->K0:Landroid/widget/TextView;

    const p2, 0x7f0b03f0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/b;->L0:Landroid/widget/TextView;

    const p2, 0x7f0b03f7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/b;->M0:Landroid/widget/TextView;

    iget-object p2, p0, Lz4/b;->O0:Landroid/view/View;

    new-instance v1, Lz4/a;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lz4/a;-><init>(Lz4/b;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b009d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lz4/b;->P0:Landroid/widget/Button;

    new-instance v1, Lz4/a;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3}, Lz4/a;-><init>(Lz4/b;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lz4/a;

    invoke-direct {p2, p0, v2}, Lz4/a;-><init>(Lz4/b;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lib/player/base/helper/w;

    iget-object v1, p0, Lz4/b;->U0:Lib/player/pages/MainActivity;

    invoke-direct {p2, v1, v2}, Lib/player/base/helper/w;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lz4/b;->Q0:Lib/player/base/helper/w;

    invoke-virtual {p2}, Lib/player/base/helper/w;->v()Lib/player/models/AppInfoModel;

    move-result-object p2

    iput-object p2, p0, Lz4/b;->R0:Lib/player/models/AppInfoModel;

    iget-object p2, p0, Lz4/b;->Q0:Lib/player/base/helper/w;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p2, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences;

    const-string v4, "login_models"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lib/player/base/helper/w;->a:Ljava/lang/Object;

    check-cast p2, Lcom/google/gson/j;

    const-class v4, Lib/player/models/LoginModel;

    invoke-virtual {p2, v4, v2}, Lcom/google/gson/j;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lib/player/models/LoginModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p2

    :catch_0
    :cond_1
    :goto_0
    iput-object v1, p0, Lz4/b;->S0:Lib/player/models/LoginModel;

    iget-object p2, p0, Lz4/b;->Q0:Lib/player/base/helper/w;

    invoke-virtual {p2}, Lib/player/base/helper/w;->B()Z

    move-result p2

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lz4/b;->G0:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/b;->K0:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/b;->L0:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/b;->M0:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lz4/b;->S0:Lib/player/models/LoginModel;

    if-eqz p2, :cond_5

    iget-object v0, p0, Lz4/b;->G0:Landroid/widget/TextView;

    invoke-virtual {p2}, Lib/player/models/LoginModel;->getUsername()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/b;->K0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/b;->S0:Lib/player/models/LoginModel;

    invoke-virtual {v0}, Lib/player/models/LoginModel;->getActive_cons()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/b;->L0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/b;->S0:Lib/player/models/LoginModel;

    invoke-virtual {v0}, Lib/player/models/LoginModel;->getMax_connections()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/b;->M0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/b;->S0:Lib/player/models/LoginModel;

    invoke-virtual {v0}, Lib/player/models/LoginModel;->getExp_date()Ljava/lang/Long;

    move-result-object v0

    sget-object v4, Lv4/c;->a:[LB3/c;

    const-string v4, "unlimited"

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    cmp-long v5, v5, v1

    if-eqz v5, :cond_4

    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string v0, "dd/MM/yyyy"

    invoke-static {v0, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    :try_start_4
    iget-object p2, p0, Lz4/b;->V0:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lz4/b;->R0:Lib/player/models/AppInfoModel;

    invoke-virtual {v0}, Lib/player/models/AppInfoModel;->getExpiredDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iput-wide v4, p0, Lz4/b;->W0:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    iput-wide v1, p0, Lz4/b;->W0:J

    :goto_3
    iget-object p2, p0, Lz4/b;->H0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/b;->Q0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->M()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/b;->R0:Lib/player/models/AppInfoModel;

    invoke-virtual {p2}, Lib/player/models/AppInfoModel;->getIs_trial()I

    move-result p2

    const/16 v0, 0x8

    if-eq p2, v3, :cond_7

    iget-wide v1, p0, Lz4/b;->W0:J

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x240c8400

    cmp-long p2, v1, v3

    if-lez p2, :cond_6

    goto :goto_4

    :cond_6
    iget-object p2, p0, Lz4/b;->P0:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lz4/b;->I0:Landroid/widget/TextView;

    iget-object v1, p0, Lz4/b;->T0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getFree_trial()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    :goto_4
    iget-object p2, p0, Lz4/b;->I0:Landroid/widget/TextView;

    iget-object v1, p0, Lz4/b;->T0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getActive()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/b;->P0:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    invoke-static {}, Lv4/c;->b()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lz4/b;->P0:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :try_start_5
    iget-object p2, p0, Lz4/b;->J0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/b;->R0:Lib/player/models/AppInfoModel;

    invoke-virtual {v0}, Lib/player/models/AppInfoModel;->getExpiredDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    iget-object p2, p0, Lz4/b;->J0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/b;->T0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getUnlimited()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    iget-object p2, p0, Lz4/b;->N0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/b;->R0:Lib/player/models/AppInfoModel;

    invoke-virtual {v0}, Lib/player/models/AppInfoModel;->getDevice_key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/b;->U0:Lib/player/pages/MainActivity;

    invoke-static {p2}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lz4/b;->T0:Lib/player/models/WordModels;

    iget-object v0, p0, Lz4/b;->z0:Landroid/widget/TextView;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getAccount()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/b;->A0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/b;->T0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/b;->B0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/b;->T0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getMac_address()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/b;->D0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/b;->T0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getExpire_date()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/b;->C0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/b;->T0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getApp_status()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/b;->F0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/b;->T0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getDevice_key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/b;->E0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/b;->T0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getPlaylist_expire_date()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/b;->P0:Landroid/widget/Button;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lz4/b;->T0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getPay_with_google_pay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "($"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz4/b;->R0:Lib/player/models/AppInfoModel;

    invoke-virtual {v1}, Lib/player/models/AppInfoModel;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method
