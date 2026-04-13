.class public LD4/h;
.super Lib/player/base/BaseFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A0:LD4/f;

.field public B0:Ljava/util/ArrayList;

.field public C0:Ljava/lang/String;

.field public m0:Lx4/m;

.field public n0:Ljava/lang/String;

.field public o0:Ljava/lang/String;

.field public p0:Ljava/lang/String;

.field public q0:Ljava/lang/String;

.field public r0:Lib/player/models/MovieModel;

.field public s0:Lib/player/models/MovieInfoResponse;

.field public t0:Ls4/b;

.field public u0:Z

.field public v0:Ljava/util/List;

.field public w0:Lib/player/base/o;

.field public final x0:Landroidx/fragment/app/n;

.field public y0:Landroid/os/Handler;

.field public z0:LD4/f;


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Lib/player/base/BaseFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LD4/h;->n0:Ljava/lang/String;

    iput-object v0, p0, LD4/h;->o0:Ljava/lang/String;

    iput-object v0, p0, LD4/h;->p0:Ljava/lang/String;

    iput-object v0, p0, LD4/h;->q0:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, LD4/h;->u0:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LD4/h;->v0:Ljava/util/List;

    new-instance v6, Landroidx/fragment/app/F;

    const/4 v1, 0x2

    invoke-direct {v6, v1}, Landroidx/fragment/app/F;-><init>(I)V

    new-instance v7, LD4/b;

    const/4 v1, 0x0

    invoke-direct {v7, p0, v1}, LD4/b;-><init>(LD4/h;I)V

    new-instance v4, LD4/g;

    invoke-direct {v4, p0}, LD4/g;-><init>(LD4/h;)V

    iget v1, p0, Landroidx/fragment/app/t;->b:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Landroidx/fragment/app/q;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroidx/fragment/app/q;-><init>(LD4/h;LD4/g;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/fragment/app/F;LD4/b;)V

    iget v1, v3, Landroidx/fragment/app/t;->b:I

    if-ltz v1, :cond_0

    invoke-virtual {v2}, Landroidx/fragment/app/q;->a()V

    goto :goto_0

    :cond_0
    iget-object v1, v3, Landroidx/fragment/app/t;->g0:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v1, Landroidx/fragment/app/n;

    invoke-direct {v1, v5}, Landroidx/fragment/app/n;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    iput-object v1, v3, LD4/h;->x0:Landroidx/fragment/app/n;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v3, LD4/h;->B0:Ljava/util/ArrayList;

    iput-object v0, v3, LD4/h;->C0:Ljava/lang/String;

    return-void

    :cond_1
    move-object v3, p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static T(LD4/h;Ljava/util/List;)V
    .locals 2

    iput-object p1, p0, LD4/h;->v0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LD4/h;->m0:Lx4/m;

    iget-object v0, v0, Lx4/m;->Q:Lib/player/base/view/LiveHorizontalGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LD4/h;->m0:Lx4/m;

    iget-object v0, v0, Lx4/m;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, LD4/h;->t0:Ls4/b;

    iput-object p1, p0, Ls4/b;->g:Ljava/lang/Object;

    invoke-virtual {p0}, Lv1/y;->d()V

    return-void

    :cond_0
    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->Q:Lib/player/base/view/LiveHorizontalGridView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->G:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, LD4/h;->t0:Ls4/b;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ls4/b;->g:Ljava/lang/Object;

    invoke-virtual {p0}, Lv1/y;->d()V

    return-void
.end method

.method public static U(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lib/player/base/o;)LD4/h;
    .locals 4

    new-instance v0, LD4/h;

    invoke-direct {v0}, LD4/h;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "tag"

    const-string v3, "movie_info"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "stream_id"

    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "category_name"

    invoke-virtual {v1, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, v0, LD4/h;->w0:Lib/player/base/o;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/t;->N(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final Q(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p0, LD4/h;->w0:Lib/player/base/o;

    check-cast p1, Lib/player/pages/MainActivity;

    iget-boolean p1, p1, Lib/player/pages/MainActivity;->y0:Z

    if-eqz p1, :cond_7

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->C:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->E:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v1

    :cond_0
    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->E:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->F:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->D:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->Q:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, LD4/h;->v0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->Q:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_3
    :goto_1
    return v1

    :pswitch_2
    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->Q:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->E:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v1

    :cond_4
    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->D:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->E:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->F:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_5
    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->C:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v1

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/t;->I()Lf/i;

    move-result-object p1

    invoke-virtual {p1}, Lf/i;->o()Landroidx/fragment/app/K;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/K;->O()V

    return v1

    :cond_7
    :goto_2
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final R()Z
    .locals 1

    iget-object v0, p0, LD4/h;->m0:Lx4/m;

    iget-object v0, v0, Lx4/m;->E:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public final S()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object v0

    iput-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p0}, LD4/h;->V()V

    iget-object v0, p0, LD4/h;->m0:Lx4/m;

    iget-object v0, v0, Lx4/m;->Y:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getMovie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LD4/h;->m0:Lx4/m;

    iget-object v0, v0, Lx4/m;->E:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getPlay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LD4/h;->m0:Lx4/m;

    iget-object v0, v0, Lx4/m;->F:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getTrailer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LD4/h;->m0:Lx4/m;

    iget-object v0, v0, Lx4/m;->G:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getCast()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final V()V
    .locals 2

    iget-boolean v0, p0, LD4/h;->u0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LD4/h;->m0:Lx4/m;

    iget-object v0, v0, Lx4/m;->O:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, LD4/h;->m0:Lx4/m;

    iget-object v0, v0, Lx4/m;->D:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getRemove_favorites()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, LD4/h;->m0:Lx4/m;

    iget-object v0, v0, Lx4/m;->O:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, LD4/h;->m0:Lx4/m;

    iget-object v0, v0, Lx4/m;->D:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getAdd_to_favorite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final W()V
    .locals 3

    iget-object v0, p0, LD4/h;->m0:Lx4/m;

    iget-object v0, v0, Lx4/m;->K:Landroid/widget/ImageView;

    const v1, 0x7f08008e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, LD4/h;->m0:Lx4/m;

    iget-object v0, v0, Lx4/m;->M:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, LD4/h;->m0:Lx4/m;

    iget-object v0, v0, Lx4/m;->S:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LD4/h;->m0:Lx4/m;

    iget-object v0, v0, Lx4/m;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LD4/h;->m0:Lx4/m;

    iget-object v0, v0, Lx4/m;->P:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LD4/h;->m0:Lx4/m;

    iget-object v0, v0, Lx4/m;->X:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LD4/h;->m0:Lx4/m;

    iget-object v0, v0, Lx4/m;->U:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LD4/h;->m0:Lx4/m;

    iget-object v0, v0, Lx4/m;->V:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LD4/h;->m0:Lx4/m;

    iget-object v0, v0, Lx4/m;->T:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LD4/h;->m0:Lx4/m;

    iget-object v0, v0, Lx4/m;->W:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LD4/h;->m0:Lx4/m;

    iget-object v0, v0, Lx4/m;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LD4/h;->m0:Lx4/m;

    iget-object v0, v0, Lx4/m;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LD4/h;->m0:Lx4/m;

    iget-object v0, v0, Lx4/m;->L:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final X(I)V
    .locals 5

    new-instance v0, Lf/e;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lf/e;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getInstall_external_player()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/e;->setTitle(Ljava/lang/CharSequence;)Lf/e;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getWant_external_player()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lf/e;->a:Lf/b;

    iput-object v1, v2, Lf/b;->f:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v2, Lf/b;->k:Z

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getOk()Ljava/lang/String;

    move-result-object v1

    new-instance v3, LD4/e;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, LD4/e;-><init>(Lib/player/base/BaseFragment;II)V

    iput-object v1, v2, Lf/b;->g:Ljava/lang/CharSequence;

    iput-object v3, v2, Lf/b;->h:Landroid/content/DialogInterface$OnClickListener;

    iget-object p1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getCancel()Ljava/lang/String;

    move-result-object p1

    new-instance v1, LD4/c;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, LD4/c;-><init>(I)V

    iput-object p1, v2, Lf/b;->i:Ljava/lang/CharSequence;

    iput-object v1, v2, Lf/b;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0}, Lf/e;->create()Lf/f;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b009f

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_7

    iget-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p1, p1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    const-string v0, "external_player"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->B()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LD4/h;->r0:Lib/player/models/MovieModel;

    invoke-virtual {p1}, Lib/player/models/MovieModel;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LD4/h;->q0:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->W()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->d0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->Q()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, LD4/h;->r0:Lib/player/models/MovieModel;

    invoke-virtual {v5}, Lib/player/models/MovieModel;->getStream_id()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, LD4/h;->r0:Lib/player/models/MovieModel;

    invoke-virtual {v6}, Lib/player/models/MovieModel;->getExtension()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v0, v1, v5, v6}, Lib/player/base/helper/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LD4/h;->q0:Ljava/lang/String;

    :goto_0
    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lib/player/pages/movie/MoviePlayerActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lib/player/base/l;->w()V

    invoke-static {}, Lib/player/base/l;->w()V

    goto :goto_1

    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lib/player/pages/movie/MovieMobilePlayerActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lib/player/base/l;->w()V

    invoke-static {}, Lib/player/base/l;->w()V

    :goto_1
    iget-object v0, p0, LD4/h;->r0:Lib/player/models/MovieModel;

    invoke-virtual {v0}, Lib/player/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, LD4/h;->r0:Lib/player/models/MovieModel;

    invoke-virtual {v0}, Lib/player/models/MovieModel;->getStream_id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stream_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, LD4/h;->s0:Lib/player/models/MovieInfoResponse;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lib/player/models/MovieInfoResponse;->getInfo()Lib/player/models/MovieInfo;

    move-result-object v0

    invoke-virtual {v0}, Lib/player/models/MovieInfo;->getPlot()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string v0, ""

    :goto_2
    const-string v1, "description"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "category_name"

    iget-object v1, p0, LD4/h;->o0:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "tmdb_id"

    iget-object v1, p0, LD4/h;->n0:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/t;->O(Landroid/content/Intent;)V

    goto/16 :goto_6

    :cond_3
    const-string p1, "android.intent.action.VIEW"

    if-ne v4, v3, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lv4/c;->u(Landroid/content/Context;)Lt1/i;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, LD4/h;->q0:Ljava/lang/String;

    iget-object v1, p0, LD4/h;->r0:Lib/player/models/MovieModel;

    invoke-virtual {v1}, Lib/player/models/MovieModel;->getName()Ljava/lang/String;

    :try_start_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "org.videolan.vlc"

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "video/*"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/t;->O(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    :cond_4
    invoke-virtual {p0, v3}, LD4/h;->X(I)V

    goto/16 :goto_6

    :cond_5
    if-ne v4, v2, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lv4/c;->m(Landroid/content/Context;)LB3/c;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, v0, LB3/c;->b:Ljava/lang/String;

    iget-object v0, v0, LB3/c;->c:Ljava/lang/String;

    iget-object v2, p0, LD4/h;->q0:Ljava/lang/String;

    :try_start_2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "application/x-mpegURL"

    invoke-virtual {v3, v2, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroidx/fragment/app/t;->O(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    :cond_6
    invoke-virtual {p0, v2}, LD4/h;->X(I)V

    goto/16 :goto_6

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b00a8

    if-ne v0, v1, :cond_b

    iget-object p1, p0, LD4/h;->s0:Lib/player/models/MovieInfoResponse;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lib/player/models/MovieInfoResponse;->getInfo()Lib/player/models/MovieInfo;

    move-result-object p1

    invoke-virtual {p1}, Lib/player/models/MovieInfo;->getYoutube_trailer()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lv4/c;->A(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_9
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getNo_trailer()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getNo_trailer()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0092

    if-ne v0, v1, :cond_f

    iget-object p1, p0, LD4/h;->o0:Ljava/lang/String;

    sget-object v0, Lv4/c;->a:[LB3/c;

    const-string v0, "xxx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "porn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "adult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_5

    :cond_c
    iget-boolean p1, p0, LD4/h;->u0:Z

    if-eqz p1, :cond_d

    iput-boolean v4, p0, LD4/h;->u0:Z

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object p1

    iget-object v0, p0, LD4/h;->r0:Lib/player/models/MovieModel;

    invoke-virtual {v0}, Lib/player/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, LD4/b;

    invoke-direct {v1, p0, v3}, LD4/b;-><init>(LD4/h;I)V

    invoke-virtual {p1, v0, v4, v1}, Lib/player/base/helper/w;->b(Ljava/lang/String;ZLib/player/base/helper/x;)V

    goto :goto_4

    :cond_d
    iput-boolean v3, p0, LD4/h;->u0:Z

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object p1

    iget-object v0, p0, LD4/h;->r0:Lib/player/models/MovieModel;

    invoke-virtual {v0}, Lib/player/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, LD4/b;

    invoke-direct {v1, p0, v2}, LD4/b;-><init>(LD4/h;I)V

    invoke-virtual {p1, v0, v3, v1}, Lib/player/base/helper/w;->b(Ljava/lang/String;ZLib/player/base/helper/x;)V

    :goto_4
    invoke-virtual {p0}, LD4/h;->V()V

    return-void

    :cond_e
    :goto_5
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getCant_add_this_movie()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b008c

    if-ne p1, v0, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/t;->I()Lf/i;

    move-result-object p1

    invoke-virtual {p1}, Lf/i;->o()Landroidx/fragment/app/K;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/K;->O()V

    :catch_1
    :cond_10
    :goto_6
    return-void
.end method

.method public final w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    sget v0, Lx4/m;->Z:I

    sget-object v0, Landroidx/databinding/b;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    const v1, 0x7f0e0053

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, v2, v0}, Landroidx/databinding/e;->Z(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/e;

    move-result-object p1

    check-cast p1, Lx4/m;

    iput-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p0, Landroidx/fragment/app/t;->u:Landroid/os/Bundle;

    if-eqz p1, :cond_2

    const-string p2, "tag"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lib/player/base/BaseFragment;->l0:Ljava/lang/String;

    iget-object p1, p0, Landroidx/fragment/app/t;->u:Landroid/os/Bundle;

    const-string p2, "stream_id"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LD4/h;->p0:Ljava/lang/String;

    iget-object p1, p0, Landroidx/fragment/app/t;->u:Landroid/os/Bundle;

    const-string p2, "category_name"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LD4/h;->o0:Ljava/lang/String;

    iget-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->B()Z

    move-result p1

    const-string p2, "name"

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/t;->u:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lib/player/base/helper/w;->o(Ljava/lang/String;)Lib/player/models/MovieModel;

    move-result-object p1

    iput-object p1, p0, LD4/h;->r0:Lib/player/models/MovieModel;

    goto :goto_0

    :cond_0
    iget-object p1, p0, LD4/h;->p0:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/t;->u:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lib/player/base/helper/w;->o(Ljava/lang/String;)Lib/player/models/MovieModel;

    move-result-object p1

    iput-object p1, p0, LD4/h;->r0:Lib/player/models/MovieModel;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object p1

    iget-object p2, p0, LD4/h;->p0:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lib/player/base/helper/w;->n(Ljava/lang/String;)Lib/player/models/MovieModel;

    move-result-object p1

    iput-object p1, p0, LD4/h;->r0:Lib/player/models/MovieModel;

    :goto_0
    iget-object p1, p0, LD4/h;->r0:Lib/player/models/MovieModel;

    invoke-virtual {p1}, Lib/player/models/MovieModel;->getStream_id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LD4/h;->p0:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, LD4/h;->S()V

    new-instance p1, Ls4/b;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, LB4/d;

    const/4 v3, 0x1

    invoke-direct {v1, v3, p0}, LB4/d;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, v2}, Ls4/b;-><init>(I)V

    iput-object v0, p1, Ls4/b;->g:Ljava/lang/Object;

    iput-object p2, p1, Ls4/b;->e:Ljava/lang/Object;

    iput-object v1, p1, Ls4/b;->f:Ljava/lang/Object;

    iput-object p1, p0, LD4/h;->t0:Ls4/b;

    iget-object p2, p0, LD4/h;->m0:Lx4/m;

    iget-object p2, p2, Lx4/m;->Q:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->Q:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, v2}, Lib/player/base/view/LiveHorizontalGridView;->setLoop(Z)V

    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->Q:Lib/player/base/view/LiveHorizontalGridView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->Q:Lib/player/base/view/LiveHorizontalGridView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    :goto_1
    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->E:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->C:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->F:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->D:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->E:Landroidx/appcompat/widget/AppCompatButton;

    new-instance p2, LD4/d;

    invoke-direct {p2, p0, v2}, LD4/d;-><init>(LD4/h;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->F:Landroidx/appcompat/widget/AppCompatButton;

    new-instance p2, LD4/d;

    invoke-direct {p2, p0, v3}, LD4/d;-><init>(LD4/h;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->D:Landroidx/appcompat/widget/AppCompatButton;

    new-instance p2, LD4/d;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, LD4/d;-><init>(LD4/h;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Lx4/m;->C:Landroid/widget/ImageButton;

    new-instance p2, LD4/d;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, LD4/d;-><init>(LD4/h;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->B()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, LD4/h;->r0:Lib/player/models/MovieModel;

    invoke-virtual {p1}, Lib/player/models/MovieModel;->getStream_id()Ljava/lang/String;

    move-result-object p1

    new-instance p2, LA4/c;

    invoke-direct {p2, v3, p0}, LA4/c;-><init>(ILjava/lang/Object;)V

    iget-object v0, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->W()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu4/b;->a(Ljava/lang/String;)Lu4/a;

    move-result-object v0

    iget-object v1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->d0()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v4}, Lib/player/base/helper/w;->Q()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4, p1}, Lu4/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Le4/c;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p2}, Le4/c;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, LD4/h;->W()V

    :goto_2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, LD4/h;->y0:Landroid/os/Handler;

    new-instance p2, LD4/f;

    invoke-direct {p2, p0, v2}, LD4/f;-><init>(LD4/h;I)V

    iput-object p2, p0, LD4/h;->z0:LD4/f;

    new-instance v0, LD4/f;

    invoke-direct {v0, p0, v3}, LD4/f;-><init>(LD4/h;I)V

    iput-object v0, p0, LD4/h;->A0:LD4/f;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, LD4/h;->m0:Lx4/m;

    iget-object p1, p1, Landroidx/databinding/e;->t:Landroid/view/View;

    return-object p1
.end method

.method public final x()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->R:Z

    iget-object v0, p0, LD4/h;->y0:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, LD4/h;->z0:LD4/f;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, LD4/h;->y0:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, LD4/h;->A0:LD4/f;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
