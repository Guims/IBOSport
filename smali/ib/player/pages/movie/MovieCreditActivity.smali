.class public Lib/player/pages/movie/MovieCreditActivity;
.super Lf/i;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic d0:I


# instance fields
.field public N:Landroid/widget/ImageView;

.field public O:Landroid/widget/ImageView;

.field public P:Landroid/widget/ImageButton;

.field public Q:Lib/player/base/view/LiveHorizontalGridView;

.field public R:Landroid/widget/TextView;

.field public S:Landroid/widget/TextView;

.field public T:Landroid/widget/TextView;

.field public U:Landroid/widget/TextView;

.field public V:Landroid/widget/Button;

.field public W:Landroid/widget/Button;

.field public X:I

.field public final Y:Ljava/util/ArrayList;

.field public Z:Lib/player/models/MovieCreditModel;

.field public a0:Lr1/i;

.field public b0:Lib/player/models/WordModels;

.field public c0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lf/i;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lib/player/pages/movie/MovieCreditActivity;->Y:Ljava/util/ArrayList;

    new-instance v0, Lib/player/models/WordModels;

    invoke-direct {v0}, Lib/player/models/WordModels;-><init>()V

    iput-object v0, p0, Lib/player/pages/movie/MovieCreditActivity;->b0:Lib/player/models/WordModels;

    const-string v0, ""

    iput-object v0, p0, Lib/player/pages/movie/MovieCreditActivity;->c0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lib/player/pages/movie/MovieCreditActivity;->P:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->P:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->V:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    :cond_1
    iget-object v0, p0, Lib/player/pages/movie/MovieCreditActivity;->V:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lib/player/pages/movie/MovieCreditActivity;->W:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->P:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->P:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lf/i;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b008c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b009f

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->Z:Lib/player/models/MovieCreditModel;

    if-eqz p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lib/player/pages/movie/MovieCreditActivity;->Z:Lib/player/models/MovieCreditModel;

    invoke-virtual {v0}, Lib/player/models/MovieCreditModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "search_key"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b00a8

    if-ne p1, v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lib/player/pages/movie/MovieCreditActivity;->Z:Lib/player/models/MovieCreditModel;

    invoke-virtual {v0}, Lib/player/models/MovieCreditModel;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/videos?api_key="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lib/player/pages/movie/MovieCreditActivity;->c0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lib/player/base/n;->k:Ljava/lang/String;

    invoke-static {v0}, Lu4/b;->a(Ljava/lang/String;)Lu4/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lu4/a;->m(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, LD4/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LD4/a;-><init>(Lib/player/pages/movie/MovieCreditActivity;I)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lf/i;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e001e

    invoke-virtual {p0, p1}, Lf/i;->setContentView(I)V

    invoke-static {p0}, Lv4/c;->a(Lf/i;)V

    invoke-static {p0}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->b0:Lib/player/models/WordModels;

    new-instance p1, Lcom/google/gson/j;

    invoke-direct {p1}, Lcom/google/gson/j;-><init>()V

    const-string v0, "PREF"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "APP_INFO_MODEL"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-class v3, Lib/player/models/AppInfoModel;

    invoke-virtual {p1, v3, v0}, Lcom/google/gson/j;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/AppInfoModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p1

    :catch_0
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lib/player/models/AppInfoModel;->getTmdbKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->c0:Ljava/lang/String;

    const p1, 0x7f0b02a4

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->N:Landroid/widget/ImageView;

    const p1, 0x7f0b01ea

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->O:Landroid/widget/ImageView;

    const p1, 0x7f0b008c

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->P:Landroid/widget/ImageButton;

    const p1, 0x7f0b0319

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lib/player/base/view/LiveHorizontalGridView;

    iput-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->Q:Lib/player/base/view/LiveHorizontalGridView;

    const p1, 0x7f0b03f2

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->R:Landroid/widget/TextView;

    const p1, 0x7f0b040f

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->S:Landroid/widget/TextView;

    const p1, 0x7f0b03e7

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p1, 0x7f0b03fc

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->T:Landroid/widget/TextView;

    const p1, 0x7f0b03e1

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p1, 0x7f0b03de

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->U:Landroid/widget/TextView;

    const p1, 0x7f0b0092

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const p1, 0x7f0b009f

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->V:Landroid/widget/Button;

    const p1, 0x7f0b00a8

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->W:Landroid/widget/Button;

    iget-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->P:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->V:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->W:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lr1/i;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    invoke-direct {p1, v2}, Lr1/i;-><init>(I)V

    const/4 v2, -0x1

    iput v2, p1, Lr1/i;->e:I

    iput-object p0, p1, Lr1/i;->g:Ljava/lang/Object;

    iput-object v0, p1, Lr1/i;->f:Ljava/lang/Object;

    iput-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->a0:Lr1/i;

    new-instance v0, LD4/a;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, LD4/a;-><init>(Lib/player/pages/movie/MovieCreditActivity;I)V

    iput-object v0, p1, Lr1/i;->h:Ljava/lang/Object;

    iget-object v0, p0, Lib/player/pages/movie/MovieCreditActivity;->Q:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    invoke-static {p0}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->Q:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, v1}, Lib/player/base/view/LiveHorizontalGridView;->setLoop(Z)V

    iget-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->Q:Lib/player/base/view/LiveHorizontalGridView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->Q:Lib/player/base/view/LiveHorizontalGridView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    :goto_1
    iget-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->V:Landroid/widget/Button;

    iget-object v0, p0, Lib/player/pages/movie/MovieCreditActivity;->b0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getFind_movie()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->W:Landroid/widget/Button;

    iget-object v0, p0, Lib/player/pages/movie/MovieCreditActivity;->b0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getWatch_trailer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "person_id"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lib/player/pages/movie/MovieCreditActivity;->X:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    iget p1, p0, Lib/player/pages/movie/MovieCreditActivity;->X:I

    if-lez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lib/player/pages/movie/MovieCreditActivity;->X:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/movie_credits?api_key="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lib/player/pages/movie/MovieCreditActivity;->c0:Ljava/lang/String;

    const-string v2, "&language=en-US"

    invoke-static {p1, v0, v2}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lib/player/base/n;->l:Ljava/lang/String;

    invoke-static {v0}, Lu4/b;->a(Ljava/lang/String;)Lu4/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lu4/a;->n(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, LD4/a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, LD4/a;-><init>(Lib/player/pages/movie/MovieCreditActivity;I)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_3
    iget-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->P:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->V:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public final w(Lib/player/models/MovieCreditModel;)V
    .locals 4

    const-string v0, ""

    iput-object p1, p0, Lib/player/pages/movie/MovieCreditActivity;->Z:Lib/player/models/MovieCreditModel;

    iget-object v1, p0, Lib/player/pages/movie/MovieCreditActivity;->R:Landroid/widget/TextView;

    invoke-virtual {p1}, Lib/player/models/MovieCreditModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lib/player/pages/movie/MovieCreditActivity;->U:Landroid/widget/TextView;

    invoke-virtual {p1}, Lib/player/models/MovieCreditModel;->getOverview()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lib/player/pages/movie/MovieCreditActivity;->S:Landroid/widget/TextView;

    invoke-virtual {p1}, Lib/player/models/MovieCreditModel;->getRelease_date()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lib/player/pages/movie/MovieCreditActivity;->T:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :try_start_0
    iget-object v1, p0, Lib/player/pages/movie/MovieCreditActivity;->T:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lib/player/models/MovieCreditModel;->getVote_average()F

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lib/player/pages/movie/MovieCreditActivity;->T:Landroid/widget/TextView;

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p1}, Lib/player/models/MovieCreditModel;->getBackdrop_path()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lib/player/models/MovieCreditModel;->getBackdrop_path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->e(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lib/player/base/n;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lib/player/models/MovieCreditModel;->getBackdrop_path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/m;->n(Ljava/lang/String;)Lcom/bumptech/glide/k;

    move-result-object v0

    iget-object v1, p0, Lib/player/pages/movie/MovieCreditActivity;->N:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/k;->A(Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->e(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v0

    const v1, 0x7f0800c9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/m;->m(Ljava/lang/Integer;)Lcom/bumptech/glide/k;

    move-result-object v0

    iget-object v1, p0, Lib/player/pages/movie/MovieCreditActivity;->N:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/k;->A(Landroid/widget/ImageView;)V

    :goto_1
    invoke-virtual {p1}, Lib/player/models/MovieCreditModel;->getPoster_path()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lib/player/models/MovieCreditModel;->getPoster_path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->e(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lib/player/base/n;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lib/player/models/MovieCreditModel;->getPoster_path()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/m;->n(Ljava/lang/String;)Lcom/bumptech/glide/k;

    move-result-object p1

    iget-object v0, p0, Lib/player/pages/movie/MovieCreditActivity;->O:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/k;->A(Landroid/widget/ImageView;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/b;->e(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p1

    const v0, 0x7f0801dd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/m;->m(Ljava/lang/Integer;)Lcom/bumptech/glide/k;

    move-result-object p1

    iget-object v0, p0, Lib/player/pages/movie/MovieCreditActivity;->O:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/k;->A(Landroid/widget/ImageView;)V

    :goto_2
    return-void
.end method
