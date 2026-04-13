.class public Lz4/E;
.super Landroidx/fragment/app/m;

# interfaces
.implements Lt4/d;


# instance fields
.field public A0:Landroid/widget/TextView;

.field public B0:Landroid/widget/TextView;

.field public C0:Landroid/widget/TextView;

.field public D0:Landroid/widget/EditText;

.field public E0:Landroid/widget/EditText;

.field public F0:Landroid/widget/EditText;

.field public G0:Landroid/widget/Button;

.field public H0:Landroid/widget/Button;

.field public I0:Lib/player/base/helper/w;

.field public J0:Ljava/lang/String;

.field public K0:Lib/player/models/WordModels;

.field public L0:Ljava/lang/String;

.field public z0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lz4/E;->J0:Ljava/lang/String;

    new-instance v1, Lib/player/models/WordModels;

    invoke-direct {v1}, Lib/player/models/WordModels;-><init>()V

    iput-object v1, p0, Lz4/E;->K0:Lib/player/models/WordModels;

    iput-object v0, p0, Lz4/E;->L0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final e(Lib/player/models/DataRequestBody;I)V
    .locals 2

    const-string p2, ""

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lib/player/models/DataRequestBody;->getStatus()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz4/E;->I0:Lib/player/base/helper/w;

    iget-object v0, p0, Lz4/E;->J0:Ljava/lang/String;

    iget-object p1, p1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "parent_control"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lz4/E;->K0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getParent_pass_changed()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lz4/E;->D0:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lz4/E;->E0:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lz4/E;->F0:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1, v1}, Landroidx/fragment/app/m;->P(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
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

    const v0, 0x7f0e0056

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b03f2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/E;->z0:Landroid/widget/TextView;

    const p2, 0x7f0b037b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/E;->A0:Landroid/widget/TextView;

    const p2, 0x7f0b037a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/E;->B0:Landroid/widget/TextView;

    const p2, 0x7f0b036b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lz4/E;->C0:Landroid/widget/TextView;

    const p2, 0x7f0b012b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lz4/E;->D0:Landroid/widget/EditText;

    const p2, 0x7f0b0129

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lz4/E;->E0:Landroid/widget/EditText;

    const p2, 0x7f0b0127

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lz4/E;->F0:Landroid/widget/EditText;

    const p2, 0x7f0b009c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lz4/E;->G0:Landroid/widget/Button;

    const p2, 0x7f0b008d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lz4/E;->H0:Landroid/widget/Button;

    iget-object p2, p0, Lz4/E;->G0:Landroid/widget/Button;

    new-instance v0, Lz4/C;

    invoke-direct {v0, p0, v1}, Lz4/C;-><init>(Lz4/E;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lz4/E;->H0:Landroid/widget/Button;

    new-instance v0, Lz4/C;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lz4/C;-><init>(Lz4/E;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lib/player/base/helper/w;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lib/player/base/helper/w;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lz4/E;->I0:Lib/player/base/helper/w;

    invoke-virtual {p2}, Lib/player/base/helper/w;->v()Lib/player/models/AppInfoModel;

    iget-object p2, p0, Lz4/E;->I0:Lib/player/base/helper/w;

    invoke-virtual {p2}, Lib/player/base/helper/w;->P()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lz4/E;->J0:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lz4/E;->I0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lib/player/app/MyApp;->x:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lz4/E;->L0:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object p2

    iput-object p2, p0, Lz4/E;->K0:Lib/player/models/WordModels;

    iget-object v0, p0, Lz4/E;->z0:Landroid/widget/TextView;

    invoke-virtual {p2}, Lib/player/models/WordModels;->getParent_control()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/E;->A0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/E;->K0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/E;->B0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/E;->K0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getNet_pass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/E;->C0:Landroid/widget/TextView;

    iget-object v0, p0, Lz4/E;->K0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getConfirm_password()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/E;->G0:Landroid/widget/Button;

    iget-object v0, p0, Lz4/E;->K0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getOk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/E;->H0:Landroid/widget/Button;

    iget-object v0, p0, Lz4/E;->K0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getCancel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lz4/E;->D0:Landroid/widget/EditText;

    new-instance v0, Lz4/D;

    invoke-direct {v0, p0, v1}, Lz4/D;-><init>(Lz4/E;I)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lz4/E;->F0:Landroid/widget/EditText;

    new-instance v0, Lz4/D;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lz4/D;-><init>(Lz4/E;I)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Landroidx/fragment/app/m;->u0:Landroid/app/Dialog;

    new-instance v0, Lz4/c;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lz4/c;-><init>(Landroidx/fragment/app/m;I)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method
