.class public abstract LB4/s;
.super Lib/player/base/BaseFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "LC1/a;",
        ">",
        "Lib/player/base/BaseFragment;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static v1:Ljava/util/ArrayList;


# instance fields
.field public A0:Ljava/lang/String;

.field public B0:Ljava/lang/String;

.field public C0:Ljava/lang/String;

.field public D0:Z

.field public final E0:Landroid/os/Handler;

.field public F0:LB4/l;

.field public G0:LB4/b;

.field public H0:LB4/l;

.field public I0:Landroidx/media3/exoplayer/ExoPlayer;

.field public J0:I

.field public K0:I

.field public L0:Lib/player/base/o;

.field public M0:Lib/player/base/view/LiveVerticalGridView;

.field public N0:Lib/player/base/view/LiveVerticalGridView;

.field public O0:Landroidx/recyclerview/widget/RecyclerView;

.field public P0:Landroidx/appcompat/widget/AppCompatButton;

.field public Q0:Landroidx/appcompat/widget/AppCompatButton;

.field public R0:Landroidx/media3/ui/PlayerView;

.field public S0:Landroid/view/View;

.field public T0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public U0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public V0:Landroid/widget/SeekBar;

.field public W0:Landroid/widget/TextView;

.field public X0:Landroid/widget/TextView;

.field public Y0:Landroid/widget/TextView;

.field public Z0:Landroid/widget/TextView;

.field public a1:Landroid/widget/TextView;

.field public b1:Landroid/widget/TextView;

.field public c1:Landroid/widget/TextView;

.field public d1:Landroid/widget/TextView;

.field public e1:Landroid/widget/TextView;

.field public f1:Landroid/widget/TextView;

.field public g1:Landroid/widget/TextView;

.field public h1:Landroid/widget/TextView;

.field public i1:Landroid/widget/TextView;

.field public j1:Landroid/widget/ImageView;

.field public k1:Landroid/widget/ImageView;

.field public l1:Landroid/widget/ImageView;

.field public m0:LC1/a;

.field public m1:Landroid/widget/EditText;

.field public n0:Ljava/util/List;

.field public n1:Landroid/widget/EditText;

.field public o0:Lio/realm/T;

.field public o1:Landroid/widget/ImageButton;

.field public p0:Ljava/util/List;

.field public p1:Landroid/widget/ImageButton;

.field public q0:Lib/player/models/EPGChannel;

.field public q1:I

.field public r0:Ls4/z;

.field public r1:I

.field public s0:Lr1/i;

.field public s1:I

.field public t0:Ls4/d;

.field public t1:J

.field public final u0:[I

.field public u1:I

.field public final v0:[I

.field public final w0:[I

.field public x0:I

.field public y0:I

.field public z0:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LB4/s;->v1:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lib/player/base/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LB4/s;->n0:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, LB4/s;->o0:Lio/realm/T;

    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v1

    iput-object v1, p0, LB4/s;->u0:[I

    const/4 v1, -0x1

    filled-new-array {v1, v1}, [I

    move-result-object v2

    iput-object v2, p0, LB4/s;->v0:[I

    filled-new-array {v1, v1}, [I

    move-result-object v2

    iput-object v2, p0, LB4/s;->w0:[I

    iput v0, p0, LB4/s;->x0:I

    iput v0, p0, LB4/s;->y0:I

    const-string v2, ""

    iput-object v2, p0, LB4/s;->A0:Ljava/lang/String;

    iput-object v2, p0, LB4/s;->C0:Ljava/lang/String;

    iput-boolean v0, p0, LB4/s;->D0:Z

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, LB4/s;->E0:Landroid/os/Handler;

    const/4 v2, 0x2

    iput v2, p0, LB4/s;->u1:I

    iput v1, p0, LB4/s;->q1:I

    iput v0, p0, LB4/s;->r1:I

    iput v0, p0, LB4/s;->s1:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LB4/s;->t1:J

    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object v0

    invoke-static {v0, v0}, LB/f;->i(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v1

    const-string v2, "fragment_search"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    invoke-static {v1, v3, v0, v4}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, LB4/s;->n0:Ljava/util/List;

    iget-object v5, p0, LB4/s;->u0:[I

    aget v6, v5, v4

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lib/player/models/CategoryModel;

    aget v4, v5, v4

    iget-object v5, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v5}, Lib/player/base/helper/w;->B()Z

    move-result v5

    new-instance v6, Lz4/u;

    invoke-direct {v6}, Lz4/u;-><init>()V

    iput-object v1, v6, Lz4/u;->C0:Landroid/content/Context;

    iput-object v3, v6, Lz4/u;->D0:Lib/player/models/CategoryModel;

    iput-boolean v5, v6, Lz4/u;->E0:Z

    iput v4, v6, Lz4/u;->F0:I

    new-instance v1, LB4/h;

    invoke-direct {v1, p0}, LB4/h;-><init>(LB4/s;)V

    iput-object v1, v6, Lz4/u;->I0:LB4/h;

    invoke-virtual {v6, v0, v2}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void
.end method

.method public final B0(Ljava/util/ArrayList;Z)V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object v0

    invoke-static {v0, v0}, LB/f;->i(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v1

    const-string v2, "fragment_subtitle"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {v1, v3, p1, p2}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-static {p1}, Lv4/c;->l(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v3

    if-eqz p2, :cond_1

    iget v4, p0, LB4/s;->r1:I

    goto :goto_0

    :cond_1
    iget v4, p0, LB4/s;->s1:I

    :goto_0
    new-instance v5, LB4/k;

    const/4 v6, 0x0

    invoke-direct {v5, p0, p2, p1, v6}, LB4/k;-><init>(Ljava/lang/Object;ZLjava/util/ArrayList;I)V

    invoke-static {v3, v1, v4, p2, v5}, Lz4/N;->T(Landroid/content/Context;Ljava/util/ArrayList;IZLz4/M;)Lz4/N;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void
.end method

.method public final C()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->R:Z

    iget-object v0, p0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, LB4/s;->B0:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LB4/s;->B0:Ljava/lang/String;

    invoke-virtual {p0, v0}, LB4/s;->p0(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final C0()V
    .locals 4

    iget-object v0, p0, LB4/s;->n1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, LB4/s;->v1:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, LB4/i;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, LB4/i;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, LB4/s;->n0:Ljava/util/List;

    return-void
.end method

.method public final D0(Ld5/a;)V
    .locals 9

    iget-object v0, p0, LB4/s;->m1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, LB4/s;->n0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v7, p0, LB4/s;->u0:[I

    const/4 v8, 0x0

    aget v1, v7, v8

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v1

    iget-object v0, p0, LB4/s;->n0:Ljava/util/List;

    aget v2, v7, v8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lib/player/models/CategoryModel;

    iget-object v0, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->B()Z

    move-result v4

    iget-object v0, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->L()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lib/player/base/helper/w;->k(Lib/player/models/CategoryModel;Ljava/lang/String;ZIZ)Lio/realm/T;

    move-result-object v0

    iput-object v0, p0, LB4/s;->o0:Lio/realm/T;

    new-instance v1, LB4/c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, LB4/c;-><init>(Ld5/a;I)V

    invoke-virtual {v0, v1}, Lio/realm/T;->b(Lio/realm/H;)V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v1

    iget-object p1, p0, LB4/s;->n0:Ljava/util/List;

    aget v0, v7, v8

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lib/player/models/CategoryModel;

    iget-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->B()Z

    move-result v4

    iget-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->L()I

    move-result v5

    invoke-virtual/range {v1 .. v6}, Lib/player/base/helper/w;->l(Lib/player/models/CategoryModel;Ljava/lang/String;ZIZ)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->b()J

    move-result-wide v0

    iput-wide v0, p0, LB4/s;->t1:J

    :cond_0
    return-void
.end method

.method public final E0()V
    .locals 2

    iget-object v0, p0, LB4/s;->e1:Landroid/widget/TextView;

    iget-object v1, p0, LB4/s;->z0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LB4/s;->e1:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public final F()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->R:Z

    sget v1, Lk0/C;->a:I

    const/16 v2, 0x17

    if-le v1, v2, :cond_0

    iget-object v1, p0, LB4/s;->R0:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v1}, Landroidx/media3/ui/PlayerView;->f()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, LB4/s;->t0(Z)V

    invoke-virtual {p0}, LB4/s;->q0()V

    iget-object v2, p0, LB4/s;->w0:[I

    aget v3, v2, v1

    iget-object v4, p0, LB4/s;->v0:[I

    aput v3, v4, v1

    aget v1, v2, v0

    aput v1, v4, v0

    :cond_0
    return-void
.end method

.method public final P()Z
    .locals 1

    iget-boolean v0, p0, LB4/s;->D0:Z

    return v0
.end method

.method public final R()Z
    .locals 4

    iget v0, p0, LB4/s;->q1:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v2, p0, LB4/s;->v0:[I

    aget v2, v2, v0

    if-eq v2, v1, :cond_4

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    goto :goto_0

    :cond_1
    iget-object v0, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lv1/G;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lv1/G;

    move-result-object v3

    invoke-virtual {v3, v2}, Lv1/G;->E0(I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->F(I)Lv1/X;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lv1/X;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return v1

    :cond_3
    const-string v0, "ViewHolder for position "

    const-string v3, " not found in GridView "

    invoke-static {v0, v2, v3}, LB/f;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, LB4/s;->q1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FocusState"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public final S()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object v0

    iput-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    iget-object v1, p0, LB4/s;->W0:Landroid/widget/TextView;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getLive()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LB4/s;->P0:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getEpg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LB4/s;->n1:Landroid/widget/EditText;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getStr_search_category()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LB4/s;->m1:Landroid/widget/EditText;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getStr_search_channels()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/realm/O;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, LB4/s;->Q0:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->is_favorite()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getRemove_favorites()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getAdd_to_favorite()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final T(Lib/player/models/TrackInfoObj;I)V
    .locals 7

    const/4 v0, 0x3

    if-nez p1, :cond_1

    if-ne p2, v0, :cond_0

    iget-object p1, p0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1}, Landroidx/media3/common/Player;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters;->buildUpon()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media3/common/Player;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void

    :cond_0
    iget-object p1, p0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1}, Landroidx/media3/common/Player;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters;->buildUpon()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->clearOverridesOfType(I)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media3/common/Player;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void

    :cond_1
    iget-object v1, p0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v1

    iget-object v2, p0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2}, Landroidx/media3/common/Player;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/TrackSelectionParameters;->buildUpon()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v2

    const/4 v3, 0x0

    if-ne p2, v0, :cond_2

    invoke-virtual {v2, v0, v3}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    :cond_2
    invoke-virtual {v1}, Landroidx/media3/common/Tracks;->getGroups()Lp3/H;

    move-result-object v0

    invoke-virtual {v0, v3}, Lp3/H;->l(I)Lp3/F;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lp3/F;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lp3/F;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Tracks$Group;

    invoke-virtual {v1}, Landroidx/media3/common/Tracks$Group;->getType()I

    move-result v4

    if-ne v4, p2, :cond_3

    move v4, v3

    :goto_1
    iget v5, v1, Landroidx/media3/common/Tracks$Group;->length:I

    if-ge v4, v5, :cond_3

    invoke-virtual {v1, v4}, Landroidx/media3/common/Tracks$Group;->getTrackFormat(I)Landroidx/media3/common/Format;

    move-result-object v5

    iget-object v5, v5, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lib/player/models/TrackInfoObj;->getLangCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Landroidx/media3/common/TrackSelectionOverride;

    invoke-virtual {v1}, Landroidx/media3/common/Tracks$Group;->getMediaTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v1

    invoke-direct {v5, v1, v4}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;I)V

    invoke-virtual {v2, v5}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setOverrideForType(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    iget-object p1, p0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {v2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media3/common/Player;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public final U(I)V
    .locals 4

    iget-object v0, p0, LB4/s;->n0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, LB4/s;->u0:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    if-le v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " \u2022 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v3}, Lib/player/models/WordModels;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LB4/s;->n0:Ljava/util/List;

    aget v1, v1, v2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/CategoryModel;

    invoke-virtual {v1}, Lib/player/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LB4/s;->b1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v0}, Lio/realm/T;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    iget-object v0, p0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v0, p1}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LB4/s;->c1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v2, p1}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/EPGChannel;

    invoke-virtual {v2}, Lib/player/models/EPGChannel;->getNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v2, p1}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/EPGChannel;

    invoke-virtual {v2}, Lib/player/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v0, p1}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/EPGChannel;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getStream_icon()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f08008f

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/bumptech/glide/b;->d(LB4/s;)Lcom/bumptech/glide/m;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/m;->n(Ljava/lang/String;)Lcom/bumptech/glide/k;

    move-result-object p1

    invoke-virtual {p1, v0}, LZ1/a;->e(I)LZ1/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/k;

    iget-object v0, p0, LB4/s;->j1:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/k;->A(Landroid/widget/ImageView;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/bumptech/glide/b;->d(LB4/s;)Lcom/bumptech/glide/m;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/m;->m(Ljava/lang/Integer;)Lcom/bumptech/glide/k;

    move-result-object p1

    invoke-virtual {p1, v0}, LZ1/a;->e(I)LZ1/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/k;

    iget-object v0, p0, LB4/s;->j1:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/k;->A(Landroid/widget/ImageView;)V

    :cond_2
    return-void
.end method

.method public final V()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v1

    iget-object v0, p0, LB4/s;->n0:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lib/player/models/CategoryModel;

    iget-object v0, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->B()Z

    move-result v4

    iget-object v0, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->L()I

    move-result v5

    const/4 v6, 0x0

    const-string v3, ""

    invoke-virtual/range {v1 .. v6}, Lib/player/base/helper/w;->l(Lib/player/models/CategoryModel;Ljava/lang/String;ZIZ)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Lio/realm/y;->A:Ljava/lang/Object;

    sget-object v0, Lio/realm/d;->v:Landroid/content/Context;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getNo_channels()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, LB4/s;->L0:Lib/player/base/o;

    const/4 v1, 0x0

    check-cast v0, Lib/player/pages/MainActivity;

    const-string v2, "films"

    invoke-virtual {v0, v2, v1}, Lib/player/pages/MainActivity;->e0(Ljava/lang/String;LB4/s;)V

    :cond_0
    return-void
.end method

.method public final W(Lib/player/models/EPGChannel;I)V
    .locals 4

    if-eqz p1, :cond_0

    sget-object v0, Lib/player/base/n;->u:Ljava/util/ArrayList;

    iget-object v1, p0, LB4/s;->n0:Ljava/util/List;

    iget-object v2, p0, LB4/s;->u0:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/CategoryModel;

    invoke-virtual {v1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v0

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_favorite()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    new-instance v2, LB4/j;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p2, v3}, LB4/j;-><init>(LB4/s;II)V

    iget-object p2, v0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p2, Lio/realm/y;

    new-instance v0, Lib/player/base/helper/y;

    invoke-direct {v0, v3, v1, p1}, Lib/player/base/helper/y;-><init>(ILjava/lang/Object;Z)V

    new-instance p1, LA3/d;

    const/16 v1, 0x12

    invoke-direct {p1, v1, v2}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0, p1}, Lio/realm/y;->C(Lio/realm/x;LA3/d;)LM4/a;

    :cond_0
    return-void
.end method

.method public final X(Lib/player/models/EPGChannel;I)V
    .locals 4

    if-eqz p1, :cond_0

    sget-object v0, Lib/player/base/n;->u:Ljava/util/ArrayList;

    iget-object v1, p0, LB4/s;->n0:Ljava/util/List;

    iget-object v2, p0, LB4/s;->u0:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/CategoryModel;

    invoke-virtual {v1}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v0

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_locked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    new-instance v2, LB4/j;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, LB4/j;-><init>(LB4/s;II)V

    iget-object p2, v0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p2, Lio/realm/y;

    new-instance v0, Lib/player/base/helper/y;

    invoke-direct {v0, v3, v1, p1}, Lib/player/base/helper/y;-><init>(ILjava/lang/Object;Z)V

    new-instance p1, LA3/d;

    const/16 v1, 0x12

    invoke-direct {p1, v1, v2}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0, p1}, Lio/realm/y;->C(Lio/realm/x;LA3/d;)LM4/a;

    :cond_0
    return-void
.end method

.method public final Y(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, LB4/s;->J0:I

    new-instance v0, LB4/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LB4/b;-><init>(LB4/s;Ljava/lang/String;I)V

    iput-object v0, p0, LB4/s;->G0:LB4/b;

    invoke-virtual {v0}, LB4/b;->run()V

    return-void
.end method

.method public final Z()V
    .locals 6

    iget v0, p0, LB4/s;->x0:I

    int-to-long v0, v0

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v2

    iget-object v2, v2, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v2, Lio/realm/y;

    const-class v3, Lib/player/models/EPGChannel;

    invoke-virtual {v2, v3}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmQuery;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    iget-object v1, p0, LB4/s;->E0:Landroid/os/Handler;

    if-lez v0, :cond_0

    iget-object v0, p0, LB4/s;->f1:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v2, p0, LB4/s;->C0:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, LB4/s;->x0:I

    iget-object v0, p0, LB4/s;->H0:LB4/l;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, LB4/s;->f1:Landroid/widget/TextView;

    iget-object v2, p0, LB4/s;->C0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LB4/s;->H0:LB4/l;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x2

    iput v0, p0, LB4/s;->K0:I

    new-instance v0, LB4/l;

    move-object v1, p0

    check-cast v1, LB4/t;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, LB4/l;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, LB4/s;->H0:LB4/l;

    invoke-virtual {v0}, LB4/l;->run()V

    return-void
.end method

.method public final a0()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LB4/s;->e0(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, LB4/s;->B0(Ljava/util/ArrayList;Z)V

    return-void

    :cond_0
    sget-object v1, Lio/realm/y;->A:Ljava/lang/Object;

    sget-object v1, Lio/realm/d;->v:Landroid/content/Context;

    iget-object v2, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getNo_audio()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public abstract b0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)LC1/a;
.end method

.method public final c0(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->W()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu4/b;->a(Ljava/lang/String;)Lu4/a;

    move-result-object v0

    iget-object v1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->d0()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lu4/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Le4/c;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Le4/c;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LB4/s;->w0(Ljava/util/List;)V

    return-void
.end method

.method public final d0()V
    .locals 3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LB4/s;->e0(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {p0, v0, v2}, LB4/s;->B0(Ljava/util/ArrayList;Z)V

    return-void

    :cond_0
    sget-object v0, Lio/realm/y;->A:Ljava/lang/Object;

    sget-object v0, Lio/realm/d;->v:Landroid/content/Context;

    iget-object v1, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-static {v1, v0, v2}, LB/f;->v(Lib/player/models/WordModels;Landroid/content/Context;I)V

    return-void
.end method

.method public final e0(I)Ljava/util/ArrayList;
    .locals 10

    iget-object v0, p0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lib/player/models/TrackInfoObj;

    const/4 v3, 0x1

    iget-object v4, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    if-eq p1, v3, :cond_0

    invoke-virtual {v4}, Lib/player/models/WordModels;->getStringDefault()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lib/player/models/WordModels;->getStringDefaultAlt()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string v5, "Default"

    const-string v6, "default"

    invoke-direct {v2, v6, v4, v5}, Lib/player/models/TrackInfoObj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/media3/common/Tracks;->getGroups()Lp3/H;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lp3/H;->l(I)Lp3/F;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lp3/F;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lp3/F;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/Tracks$Group;

    invoke-virtual {v4}, Landroidx/media3/common/Tracks$Group;->getType()I

    move-result v5

    if-ne v5, p1, :cond_1

    move v5, v2

    :goto_1
    iget v6, v4, Landroidx/media3/common/Tracks$Group;->length:I

    if-ge v5, v6, :cond_1

    invoke-virtual {v4, v5}, Landroidx/media3/common/Tracks$Group;->getTrackFormat(I)Landroidx/media3/common/Format;

    move-result-object v6

    new-instance v7, Lib/player/models/TrackInfoObj;

    iget-object v8, v6, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    const/4 v9, 0x3

    if-ne p1, v9, :cond_2

    move v9, v3

    goto :goto_2

    :cond_2
    move v9, v2

    :goto_2
    invoke-static {v8, v9}, Lv4/c;->k(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    iget-object v6, v6, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v6}, Lib/player/models/TrackInfoObj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public final f0()V
    .locals 7

    iget-object v0, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->B()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getNo_epg_avaliable()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object v0

    invoke-static {v0, v0}, LB/f;->i(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v0

    iget-object v2, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {v2}, Lib/player/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, LC4/b;

    invoke-direct {v3}, LC4/b;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "tag"

    const-string v6, "epg"

    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "name"

    invoke-virtual {v4, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroidx/fragment/app/t;->N(Landroid/os/Bundle;)V

    const v2, 0x7f0b00c2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroidx/fragment/app/a;->i(ILib/player/base/BaseFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroidx/fragment/app/a;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->e(Z)I

    iget-object v0, p0, LB4/s;->L0:Lib/player/base/o;

    check-cast v0, Lib/player/pages/MainActivity;

    iput-boolean v1, v0, Lib/player/pages/MainActivity;->y0:Z

    :cond_1
    return-void
.end method

.method public final g0()V
    .locals 3

    invoke-virtual {p0}, LB4/s;->q0()V

    iget-object v0, p0, LB4/s;->n0:Ljava/util/List;

    iget-object v1, p0, LB4/s;->u0:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/CategoryModel;

    invoke-virtual {v0}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resume_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LB4/s;->r0()V

    :cond_0
    iget-object v0, p0, LB4/s;->L0:Lib/player/base/o;

    const/4 v1, 0x0

    check-cast v0, Lib/player/pages/MainActivity;

    const-string v2, "series"

    invoke-virtual {v0, v2, v1}, Lib/player/pages/MainActivity;->e0(Ljava/lang/String;LB4/s;)V

    return-void
.end method

.method public final h0()V
    .locals 3

    invoke-virtual {p0}, LB4/s;->q0()V

    iget-object v0, p0, LB4/s;->n0:Ljava/util/List;

    iget-object v1, p0, LB4/s;->u0:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/CategoryModel;

    invoke-virtual {v0}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resume_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LB4/s;->r0()V

    :cond_0
    iget-object v0, p0, LB4/s;->L0:Lib/player/base/o;

    const/4 v1, 0x0

    check-cast v0, Lib/player/pages/MainActivity;

    const-string v2, "films"

    invoke-virtual {v0, v2, v1}, Lib/player/pages/MainActivity;->e0(Ljava/lang/String;LB4/s;)V

    return-void
.end method

.method public abstract i0()V
.end method

.method public final j0()V
    .locals 15

    sget-object v0, Lib/player/app/MyApp;->u:Ljava/util/ArrayList;

    sput-object v0, LB4/s;->v1:Ljava/util/ArrayList;

    invoke-virtual {p0}, LB4/s;->C0()V

    iget-object v0, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "category_pos"

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, v0, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v3, Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lib/player/base/helper/w;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v0, v2

    :goto_0
    iget-object v1, p0, LB4/s;->u0:[I

    const/4 v3, 0x0

    aput v0, v1, v3

    iget-object v4, p0, LB4/s;->n0:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-le v0, v4, :cond_0

    aput v2, v1, v3

    :cond_0
    iget-object v0, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    iget-object v4, p0, LB4/s;->n0:Ljava/util/List;

    aget v5, v1, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lib/player/models/CategoryModel;

    invoke-virtual {v4}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, LB4/s;->n0:Ljava/util/List;

    aget v6, v1, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lib/player/models/CategoryModel;

    invoke-virtual {v5}, Lib/player/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lib/player/base/n;->d(Lib/player/base/helper/w;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    aput v3, v1, v3

    :cond_1
    new-instance v0, LB4/f;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, LB4/f;-><init>(LB4/s;I)V

    aget v4, v1, v3

    sget v5, Lib/player/app/MyApp;->y:I

    add-int/lit8 v6, v5, -0x1

    const-wide/16 v7, 0x0

    const-string v11, ""

    if-le v4, v6, :cond_2

    iget-object v6, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v6}, Lib/player/base/helper/w;->N()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v5

    if-ge v4, v6, :cond_2

    iget-object v4, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v4}, Lib/player/base/helper/w;->N()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v4}, Lib/player/base/helper/w;->N()Ljava/util/List;

    move-result-object v4

    aget v6, v1, v3

    sub-int/2addr v6, v5

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v5, v4}, Lib/player/base/helper/w;->O(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v5

    invoke-virtual {v5, v11, v4}, Lib/player/base/helper/w;->f(Ljava/lang/String;Ljava/util/List;)Lio/realm/T;

    move-result-object v5

    iput-object v5, p0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v5

    invoke-virtual {v5, v11, v4}, Lib/player/base/helper/w;->g(Ljava/lang/String;Ljava/util/List;)Lio/realm/RealmQuery;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/RealmQuery;->b()J

    move-result-wide v4

    iput-wide v4, p0, LB4/s;->t1:J

    iget-object v4, p0, LB4/s;->o0:Lio/realm/T;

    new-instance v5, LB4/g;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0}, LB4/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Lio/realm/T;->b(Lio/realm/H;)V

    goto :goto_3

    :cond_2
    aget v4, v1, v3

    iget-object v5, p0, LB4/s;->n0:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, LB4/s;->n0:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v5, p0, LB4/s;->n0:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v9

    iget-object v5, p0, LB4/s;->n0:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lib/player/models/CategoryModel;

    iget-object v5, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v5}, Lib/player/base/helper/w;->B()Z

    move-result v12

    iget-object v5, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v5}, Lib/player/base/helper/w;->L()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lib/player/base/helper/w;->l(Lib/player/models/CategoryModel;Ljava/lang/String;ZIZ)Lio/realm/RealmQuery;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/RealmQuery;->b()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-lez v5, :cond_4

    aput v4, v1, v3

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {p0, v0}, LB4/s;->D0(Ld5/a;)V

    :cond_6
    :goto_3
    iget-object v0, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->w()I

    move-result v0

    aput v0, v1, v2

    iget-wide v4, p0, LB4/s;->t1:J

    cmp-long v6, v4, v7

    const/4 v7, -0x1

    if-lez v6, :cond_7

    int-to-long v8, v0

    const-wide/16 v10, 0x1

    sub-long/2addr v4, v10

    cmp-long v0, v8, v4

    if-lez v0, :cond_8

    aput v3, v1, v2

    goto :goto_4

    :cond_7
    aput v7, v1, v2

    iget-object v0, p0, LB4/s;->L0:Lib/player/base/o;

    const/4 v4, 0x0

    check-cast v0, Lib/player/pages/MainActivity;

    const-string v5, "films"

    invoke-virtual {v0, v5, v4}, Lib/player/pages/MainActivity;->e0(Ljava/lang/String;LB4/s;)V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v4}, Lib/player/models/WordModels;->getNo_channels()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_8
    :goto_4
    iget-object v0, p0, LB4/s;->v0:[I

    aget v4, v0, v3

    if-eq v4, v7, :cond_9

    aput v4, v1, v3

    :cond_9
    aget v0, v0, v2

    if-eq v0, v7, :cond_a

    aput v0, v1, v2

    :cond_a
    return-void
.end method

.method public final k0()V
    .locals 4

    new-instance v0, LB4/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LB4/l;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, LB4/s;->F0:LB4/l;

    iget-object v1, p0, LB4/s;->E0:Landroid/os/Handler;

    const-wide/16 v2, 0x1b58

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final l0(Ljava/lang/Integer;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, LB4/s;->u0:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    sget v3, Lib/player/app/MyApp;->y:I

    add-int/lit8 v4, v3, -0x1

    if-le v0, v4, :cond_1

    iget-object v4, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v4}, Lib/player/base/helper/w;->N()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v3

    if-ge v0, v4, :cond_1

    iget-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->N()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->N()Ljava/util/List;

    move-result-object p1

    aget v0, v1, v2

    sub-int/2addr v0, v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0, p1}, Lib/player/base/helper/w;->O(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1, p1}, Lib/player/base/helper/w;->f(Ljava/lang/String;Ljava/util/List;)Lio/realm/T;

    move-result-object p1

    iput-object p1, p0, LB4/s;->o0:Lio/realm/T;

    new-instance v0, LB4/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LB4/n;-><init>(LB4/s;I)V

    invoke-virtual {p1, v0}, Lio/realm/T;->b(Lio/realm/H;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, LB4/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LB4/a;-><init>(Lib/player/base/BaseFragment;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, LB4/s;->D0(Ld5/a;)V

    return-void
.end method

.method public final m0()V
    .locals 8

    iget-object v0, p0, LB4/s;->u0:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v3}, Lio/realm/T;->size()I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    aget v2, v0, v1

    add-int/2addr v2, v1

    aput v2, v0, v1

    goto :goto_0

    :cond_0
    aput v4, v0, v1

    :goto_0
    iget-object v2, p0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    aget v2, v0, v1

    iget-object v3, p0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v3}, Lio/realm/T;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget-object v2, p0, LB4/s;->n0:Ljava/util/List;

    iget-object v3, p0, LB4/s;->w0:[I

    aget v5, v3, v4

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/CategoryModel;

    invoke-virtual {v2}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "all_id"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    iget-object v5, p0, LB4/s;->o0:Lio/realm/T;

    aget v6, v0, v1

    invoke-virtual {v5, v6}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lib/player/models/EPGChannel;

    invoke-virtual {v5}, Lib/player/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, LB4/s;->o0:Lio/realm/T;

    aget v7, v0, v1

    invoke-virtual {v6, v7}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lib/player/models/EPGChannel;

    invoke-virtual {v6}, Lib/player/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lib/player/base/n;->d(Lib/player/base/helper/w;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, LB4/s;->o0:Lio/realm/T;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/EPGChannel;

    aget v0, v0, v1

    invoke-virtual {p0, v2, v0, v1}, LB4/s;->v0(Lib/player/models/EPGChannel;II)V

    return-void

    :cond_1
    sget-object v2, Lib/player/base/n;->u:Ljava/util/ArrayList;

    iget-object v5, p0, LB4/s;->n0:Ljava/util/List;

    aget v6, v3, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lib/player/models/CategoryModel;

    invoke-virtual {v5}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, LB4/s;->n0:Ljava/util/List;

    aget v3, v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/CategoryModel;

    invoke-virtual {v2}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lock_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, LB4/s;->o0:Lio/realm/T;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/EPGChannel;

    invoke-virtual {v2}, Lib/player/models/EPGChannel;->is_locked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, LB4/s;->o0:Lio/realm/T;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/EPGChannel;

    aget v0, v0, v1

    invoke-virtual {p0, v2, v0, v1}, LB4/s;->v0(Lib/player/models/EPGChannel;II)V

    return-void

    :cond_2
    iget-object v2, p0, LB4/s;->o0:Lio/realm/T;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/EPGChannel;

    invoke-virtual {p0, v2}, LB4/s;->o0(Lib/player/models/EPGChannel;)V

    iget-object v2, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->B()Z

    move-result v2

    iget-object v3, p0, LB4/s;->E0:Landroid/os/Handler;

    if-nez v2, :cond_3

    iget-object v2, p0, LB4/s;->G0:LB4/b;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, LB4/s;->A0:Ljava/lang/String;

    invoke-virtual {p0, v2}, LB4/s;->Y(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, LB4/s;->w0(Ljava/util/List;)V

    :goto_1
    aget v2, v0, v1

    invoke-virtual {p0, v2}, LB4/s;->U(I)V

    iget-object v2, p0, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_4

    iget-object v2, p0, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v2, p0, LB4/s;->F0:LB4/l;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, LB4/s;->k0()V

    invoke-virtual {p0}, LB4/s;->E0()V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    return-void

    :cond_5
    iget-object v2, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Landroidx/leanback/widget/f;->e0(I)V

    :cond_6
    return-void
.end method

.method public final n0()V
    .locals 8

    iget-object v0, p0, LB4/s;->u0:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    if-lez v2, :cond_0

    sub-int/2addr v2, v1

    aput v2, v0, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v2}, Lio/realm/T;->size()I

    move-result v2

    sub-int/2addr v2, v1

    aput v2, v0, v1

    :goto_0
    iget-object v2, p0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    aget v2, v0, v1

    iget-object v3, p0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v3}, Lio/realm/T;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget-object v2, p0, LB4/s;->n0:Ljava/util/List;

    iget-object v3, p0, LB4/s;->w0:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/CategoryModel;

    invoke-virtual {v2}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "all_id"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    iget-object v5, p0, LB4/s;->o0:Lio/realm/T;

    aget v6, v0, v1

    invoke-virtual {v5, v6}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lib/player/models/EPGChannel;

    invoke-virtual {v5}, Lib/player/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, LB4/s;->o0:Lio/realm/T;

    aget v7, v0, v1

    invoke-virtual {v6, v7}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lib/player/models/EPGChannel;

    invoke-virtual {v6}, Lib/player/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lib/player/base/n;->d(Lib/player/base/helper/w;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, LB4/s;->o0:Lio/realm/T;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/EPGChannel;

    aget v0, v0, v1

    invoke-virtual {p0, v2, v0, v1}, LB4/s;->v0(Lib/player/models/EPGChannel;II)V

    return-void

    :cond_1
    sget-object v2, Lib/player/base/n;->u:Ljava/util/ArrayList;

    iget-object v5, p0, LB4/s;->n0:Ljava/util/List;

    aget v6, v3, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lib/player/models/CategoryModel;

    invoke-virtual {v5}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, LB4/s;->n0:Ljava/util/List;

    aget v3, v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/CategoryModel;

    invoke-virtual {v2}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lock_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, LB4/s;->o0:Lio/realm/T;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/EPGChannel;

    invoke-virtual {v2}, Lib/player/models/EPGChannel;->is_locked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, LB4/s;->o0:Lio/realm/T;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/EPGChannel;

    aget v0, v0, v1

    invoke-virtual {p0, v2, v0, v1}, LB4/s;->v0(Lib/player/models/EPGChannel;II)V

    return-void

    :cond_2
    iget-object v2, p0, LB4/s;->o0:Lio/realm/T;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/EPGChannel;

    invoke-virtual {p0, v2}, LB4/s;->o0(Lib/player/models/EPGChannel;)V

    iget-object v2, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->B()Z

    move-result v2

    iget-object v3, p0, LB4/s;->E0:Landroid/os/Handler;

    if-nez v2, :cond_3

    iget-object v2, p0, LB4/s;->G0:LB4/b;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, LB4/s;->A0:Ljava/lang/String;

    invoke-virtual {p0, v2}, LB4/s;->Y(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, LB4/s;->w0(Ljava/util/List;)V

    :goto_1
    aget v2, v0, v1

    invoke-virtual {p0, v2}, LB4/s;->U(I)V

    invoke-virtual {p0}, LB4/s;->E0()V

    iget-object v2, p0, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_4

    iget-object v2, p0, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v2, p0, LB4/s;->F0:LB4/l;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, LB4/s;->k0()V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    return-void

    :cond_5
    iget-object v2, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Landroidx/leanback/widget/f;->e0(I)V

    :cond_6
    return-void
.end method

.method public final o0(Lib/player/models/EPGChannel;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Playing channel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "playSelectedChannel"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, LB4/s;->u0:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, LB4/s;->w0:[I

    aput v2, v3, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    aput v0, v3, v1

    iget-object v0, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0, v2}, Lib/player/base/helper/w;->h0(I)V

    iget-object v0, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    aget v2, v3, v1

    invoke-virtual {v0, v2}, Lib/player/base/helper/w;->i0(I)V

    iput-object p1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getStream_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LB4/s;->A0:Ljava/lang/String;

    iget-object v0, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {v0}, Lib/player/models/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LB4/s;->z0:Ljava/lang/String;

    iget-object v0, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {v0}, Lib/player/models/EPGChannel;->is_favorite()Z

    move-result v0

    invoke-virtual {p0, v0}, LB4/s;->x0(Z)V

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->is_locked()Z

    move-result p1

    invoke-virtual {p0, p1}, LB4/s;->z0(Z)V

    iget-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->B()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {p1}, Lib/player/models/EPGChannel;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LB4/s;->B0:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->W()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->d0()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->Q()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LB4/s;->A0:Ljava/lang/String;

    iget-object v4, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "ts"

    :try_start_0
    iget-object v4, v4, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast v4, Landroid/content/SharedPreferences;

    const-string v6, "live_stream_format"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v4

    :catch_0
    :cond_2
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/live/"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LB4/s;->B0:Ljava/lang/String;

    :goto_1
    iget-object p1, p0, LB4/s;->B0:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, LB4/b;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, LB4/b;-><init>(LB4/s;Ljava/lang/String;I)V

    const-wide/16 v3, 0x4e20

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, LB4/s;->r0:Ls4/z;

    invoke-virtual {p1, v1}, Lv1/y;->e(I)V

    invoke-virtual {p0}, LB4/s;->q0()V

    iget-object p1, p0, LB4/s;->B0:Ljava/lang/String;

    invoke-virtual {p0, p1}, LB4/s;->p0(Ljava/lang/String;)V

    return-void
.end method

.method public final p0(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    :cond_0
    iget-object v0, p0, LB4/s;->k1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LB4/s;->k1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lk0/C;->I(Landroid/net/Uri;)I

    move-result v0

    invoke-static {v0}, Lk0/C;->o(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    new-instance v2, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v2}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroidx/media3/common/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/media3/common/MediaItem$Builder;->setMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p1

    new-instance v0, Landroidx/media3/common/TrackSelectionParameters$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/common/TrackSelectionParameters$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v4}, Lib/player/base/helper/w;->F()Z

    move-result v4

    invoke-static {v3, v4}, Lv4/a;->b(Landroid/content/Context;Z)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object v3

    new-instance v4, Lu0/h;

    invoke-direct {v4}, Lu0/h;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v6}, Lib/player/base/helper/w;->F()Z

    move-result v6

    invoke-static {v5, v6}, Lv4/a;->d(Landroid/content/Context;Z)Landroidx/media3/datasource/HttpDataSource$Factory;

    move-result-object v5

    iput-object v5, v4, Lu0/h;->d:Landroidx/media3/datasource/HttpDataSource$Factory;

    new-instance v5, Landroidx/media3/exoplayer/source/r;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/media3/exoplayer/source/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Landroidx/media3/exoplayer/source/r;->f(Landroidx/media3/datasource/DataSource$Factory;)V

    invoke-virtual {v5, v4}, Landroidx/media3/exoplayer/source/r;->g(Lu0/r;)Landroidx/media3/exoplayer/source/r;

    invoke-virtual {v1, v5}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setMediaSourceFactory(Landroidx/media3/exoplayer/source/D;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lv4/a;->a(Landroid/content/Context;Z)Landroidx/media3/exoplayer/DefaultRenderersFactory;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setRenderersFactory(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v1

    iput-object v1, p0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1, v0}, Landroidx/media3/common/Player;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    iget-object v0, p0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

    new-instance v1, LB4/q;

    invoke-direct {v1, p0}, LB4/q;-><init>(LB4/s;)V

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->addAnalyticsListener(Lq0/c;)V

    iget-object v0, p0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

    new-instance v1, LB4/r;

    invoke-direct {v1, p0}, LB4/r;-><init>(LB4/s;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    iget-object v0, p0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

    sget-object v1, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    invoke-interface {v0, v1, v2}, Landroidx/media3/common/Player;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)V

    iget-object v0, p0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, v2}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    iget-object v0, p0, LB4/s;->R0:Landroidx/media3/ui/PlayerView;

    iget-object v1, p0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V

    iget-object v0, p0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setMediaItem(Landroidx/media3/common/MediaItem;)V

    iget-object p1, p0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1}, Landroidx/media3/common/Player;->prepare()V

    iget-object p1, p0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1}, Landroidx/media3/common/Player;->play()V

    return-void
.end method

.method public final q0()V
    .locals 2

    iget-object v0, p0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->stop()V

    iget-object v0, p0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v1, p0, LB4/s;->R0:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v1, v0}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V

    return-void
.end method

.method public final r0()V
    .locals 5

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iget-object v1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->B()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    move v3, v2

    :goto_0
    iget-object v4, p0, LB4/s;->n0:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, LB4/s;->n0:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lib/player/models/CategoryModel;

    invoke-virtual {v4}, Lib/player/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, LB4/s;->q0:Lib/player/models/EPGChannel;

    invoke-virtual {v1}, Lib/player/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object v1

    move v3, v2

    :goto_1
    iget-object v4, p0, LB4/s;->n0:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    iget-object v4, p0, LB4/s;->n0:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lib/player/models/CategoryModel;

    invoke-virtual {v4}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    move v2, v3

    :cond_4
    new-instance v1, LB4/a;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v0, v3}, LB4/a;-><init>(Lib/player/base/BaseFragment;Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, LB4/s;->D0(Ld5/a;)V

    iget-object v0, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0, v2}, Lib/player/base/helper/w;->h0(I)V

    return-void
.end method

.method public final s0(Ljava/util/List;)V
    .locals 8

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, LB4/s;->Y0:Landroid/widget/TextView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lib/player/models/CatchUpEpg;

    invoke-virtual {v3}, Lib/player/models/CatchUpEpg;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lv4/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, LB4/s;->X0:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lib/player/base/helper/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lib/player/models/CatchUpEpg;

    invoke-virtual {v4}, Lib/player/models/CatchUpEpg;->getStart()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lv4/c;->h(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lib/player/app/MyApp;->s:J

    add-long/2addr v4, v6

    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, LB4/s;->V0:Landroid/widget/SeekBar;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/CatchUpEpg;

    invoke-virtual {v1}, Lib/player/models/CatchUpEpg;->getProgress()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v0, p0, LB4/s;->Z0:Landroid/widget/TextView;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/CatchUpEpg;

    invoke-virtual {v1}, Lib/player/models/CatchUpEpg;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lv4/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LB4/s;->a1:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lib/player/base/helper/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/CatchUpEpg;

    invoke-virtual {p1}, Lib/player/models/CatchUpEpg;->getStart()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lv4/c;->h(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-wide v4, Lib/player/app/MyApp;->s:J

    add-long/2addr v2, v4

    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {p1, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object p1, p0, LB4/s;->a1:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LB4/s;->Z0:Landroid/widget/TextView;

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getNo_information()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object p1, p0, LB4/s;->X0:Landroid/widget/TextView;

    iget-object v2, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getNo_information()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LB4/s;->Y0:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LB4/s;->V0:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, LB4/s;->a1:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LB4/s;->Z0:Landroid/widget/TextView;

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getNo_information()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final t0(Z)V
    .locals 6

    iput-boolean p1, p0, LB4/s;->D0:Z

    iget-object v0, p0, LB4/s;->L0:Lib/player/base/o;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/t;->g()Lf/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/t;->g()Lf/i;

    move-result-object v0

    check-cast v0, Lib/player/pages/MainActivity;

    iput-object v0, p0, LB4/s;->L0:Lib/player/base/o;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exit(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, LB4/s;->L0:Lib/player/base/o;

    if-nez v0, :cond_2

    return-void

    :cond_2
    check-cast v0, Lib/player/pages/MainActivity;

    if-eqz p1, :cond_4

    :try_start_0
    iget-boolean v2, v0, Lib/player/pages/MainActivity;->x0:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lib/player/pages/MainActivity;->k0()V

    :cond_3
    iget-object v2, v0, Lib/player/pages/MainActivity;->j0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lib/player/pages/MainActivity;->k0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lib/player/pages/MainActivity;->t0:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lib/player/pages/MainActivity;->r0:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lib/player/pages/MainActivity;->u0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lib/player/pages/MainActivity;->j0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lib/player/pages/MainActivity;->k0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lib/player/pages/MainActivity;->t0:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lib/player/pages/MainActivity;->r0:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Lib/player/pages/MainActivity;->h0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    iget-object v0, p0, LB4/s;->E0:Landroid/os/Handler;

    const/16 v2, 0x8

    if-eqz p1, :cond_7

    iget-object v3, p0, LB4/s;->P0:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, LB4/s;->Q0:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, LB4/s;->n1:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, LB4/s;->m1:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, LB4/s;->T0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_5

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v4, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    :cond_5
    iget-object v3, p0, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_6

    iget-object v2, p0, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v1, p0, LB4/s;->F0:LB4/l;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, LB4/s;->k0()V

    goto :goto_2

    :cond_7
    iget-object v3, p0, LB4/s;->T0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_8

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v4, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    :cond_8
    iget-object v3, p0, LB4/s;->P0:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, LB4/s;->Q0:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, LB4/s;->F0:LB4/l;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, LB4/s;->u0(Z)V

    const/4 v0, 0x2

    iput v0, p0, LB4/s;->u1:I

    iget-object v0, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LB4/s;->m1:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LB4/s;->n1:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LB4/s;->s0:Lr1/i;

    iget-object v1, p0, LB4/s;->u0:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v2, v0, Lr1/i;->e:I

    iput v1, v0, Lr1/i;->e:I

    invoke-virtual {v0, v2}, Lv1/y;->e(I)V

    invoke-virtual {v0, v1}, Lv1/y;->e(I)V

    iget-object v0, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :goto_2
    new-instance v0, Lu/n;

    invoke-direct {v0}, Lu/n;-><init>()V

    iget-object v1, p0, LB4/s;->U0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Lu/n;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const v1, 0x7f0b01ba

    const v2, 0x7f0b01b9

    const v3, 0x7f0b041c

    const v4, 0x7f0b041b

    if-eqz p1, :cond_9

    const p1, -0x41947ae1    # -0.23f

    invoke-virtual {v0, v4, p1}, Lu/n;->k(IF)V

    const/4 p1, 0x0

    invoke-virtual {v0, v3, p1}, Lu/n;->k(IF)V

    invoke-virtual {v0, v2, p1}, Lu/n;->k(IF)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p1}, Lu/n;->k(IF)V

    goto :goto_3

    :cond_9
    const p1, 0x3e851eb8    # 0.26f

    invoke-virtual {v0, v4, p1}, Lu/n;->k(IF)V

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v3, p1}, Lu/n;->k(IF)V

    const p1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v2, p1}, Lu/n;->k(IF)V

    const p1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1, p1}, Lu/n;->k(IF)V

    :goto_3
    iget-object p1, p0, LB4/s;->U0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Lu/n;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public abstract u0(Z)V
.end method

.method public final v(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lib/player/base/BaseFragment;->v(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/t;->u:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v0, "tag"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lib/player/base/BaseFragment;->l0:Ljava/lang/String;

    iget-object p1, p0, Landroidx/fragment/app/t;->u:Landroid/os/Bundle;

    const-string v0, "is_full"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, LB4/s;->D0:Z

    :cond_0
    return-void
.end method

.method public final v0(Lib/player/models/EPGChannel;II)V
    .locals 9

    invoke-virtual {p0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object v0

    invoke-static {v0, v0}, LB/f;->i(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v1

    const-string v2, "fragment_channel_lock"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {v1, v3, p1, p2}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->P()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lz4/y;->T(Ljava/lang/String;)Lz4/y;

    move-result-object v1

    new-instance v3, LB4/p;

    const/4 v8, 0x0

    move-object v4, p0

    move-object v7, p1

    move v6, p2

    move v5, p3

    invoke-direct/range {v3 .. v8}, LB4/p;-><init>(Lib/player/base/BaseFragment;IILib/player/models/EPGChannel;I)V

    iput-object v3, v1, Lz4/y;->A0:Lz4/x;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void
.end method

.method public final w(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    invoke-virtual {p0, p1, p2}, LB4/s;->b0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)LC1/a;

    move-result-object p1

    iput-object p1, p0, LB4/s;->m0:LC1/a;

    invoke-virtual {p0}, LB4/s;->i0()V

    invoke-virtual {p0}, LB4/s;->j0()V

    invoke-virtual {p0}, LB4/s;->S()V

    invoke-virtual {p0}, LB4/s;->V()V

    new-instance v0, Ls4/z;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, LB4/s;->n0:Ljava/util/List;

    iget-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->B()Z

    move-result v3

    iget-object p1, p0, LB4/s;->u0:[I

    const/4 p2, 0x0

    aget v4, p1, p2

    new-instance v5, LB4/d;

    invoke-direct {v5, p2, p0}, LB4/d;-><init>(ILjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Ls4/z;-><init>(Landroid/content/Context;Ljava/util/List;ZILd5/q;)V

    iput-object v0, p0, LB4/s;->r0:Ls4/z;

    iget-object v1, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    aget v1, p1, p2

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    aget v1, p1, p2

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/f;->e0(I)V

    :goto_0
    iget-object v0, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v0, p2}, Lib/player/base/view/LiveVerticalGridView;->setLoop(Z)V

    iget-object v0, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, LB4/s;->M0:Lib/player/base/view/LiveVerticalGridView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    :goto_1
    new-instance v0, Lr1/i;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, LB4/s;->o0:Lio/realm/T;

    aget p1, p1, v1

    new-instance v4, LA4/b;

    invoke-direct {v4, v1, p0}, LA4/b;-><init>(ILandroidx/fragment/app/t;)V

    invoke-direct {v0, v2, v3, p1, v4}, Lr1/i;-><init>(Landroid/content/Context;Ljava/util/List;ILA4/b;)V

    iput-object v0, p0, LB4/s;->s0:Lr1/i;

    iget-object p1, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    iget-object p1, p0, LB4/s;->P0:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v0, p0, LB4/s;->Q0:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/widget/Button;

    aput-object p1, v3, p2

    aput-object v0, v3, v1

    move p1, p2

    :goto_2
    if-ge p1, v2, :cond_2

    aget-object v0, v3, p1

    new-instance v4, LB4/e;

    invoke-direct {v4, p0, p2}, LB4/e;-><init>(LB4/s;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    iget-object p1, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1, p2}, Lib/player/base/view/LiveVerticalGridView;->setLoop(Z)V

    iget-object p1, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    :goto_3
    iget-object p1, p0, LB4/s;->R0:Landroidx/media3/ui/PlayerView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    iget-object p1, p0, LB4/s;->R0:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->getSubtitleView()Landroidx/media3/ui/SubtitleView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/media3/ui/SubtitleView;->setApplyEmbeddedStyles(Z)V

    new-instance v3, Lr1/c;

    iget-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->Y()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iget-object p1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->X()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lr1/c;-><init>(IIIIILandroid/graphics/Typeface;)V

    iget-object p1, p0, LB4/s;->R0:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->getSubtitleView()Landroidx/media3/ui/SubtitleView;

    move-result-object p1

    iget-object v0, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->Z()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroidx/media3/ui/SubtitleView;->a(F)V

    iget-object p1, p0, LB4/s;->R0:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->getSubtitleView()Landroidx/media3/ui/SubtitleView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/media3/ui/SubtitleView;->setStyle(Lr1/c;)V

    new-instance p1, Ls4/d;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v1}, Ls4/d;-><init>(I)V

    iput-object v0, p1, Ls4/d;->e:Ljava/lang/Object;

    iput-object v3, p1, Ls4/d;->f:Ljava/lang/Object;

    iput-object p1, p0, LB4/s;->t0:Ls4/d;

    iget-object p1, p0, LB4/s;->O0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    iget-object p1, p0, LB4/s;->O0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, LB4/s;->t0:Ls4/d;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    iget-object p1, p0, LB4/s;->O0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, LB4/s;->P0:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, LB4/s;->Q0:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, LB4/s;->P0:Landroidx/appcompat/widget/AppCompatButton;

    const v0, 0x7f080146

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lz/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v3, 0x18

    invoke-virtual {v0, p2, p2, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v0, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object p1, p0, LB4/s;->P0:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, LB4/s;->Q0:Landroidx/appcompat/widget/AppCompatButton;

    const v5, 0x7f080123

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lz/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, p2, p2, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v4, v4, v5, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object p1, p0, LB4/s;->Q0:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, LB4/s;->m1:Landroid/widget/EditText;

    new-instance v0, LB4/e;

    invoke-direct {v0, p0, v1}, LB4/e;-><init>(LB4/s;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, LB4/s;->m1:Landroid/widget/EditText;

    new-instance v0, LB4/m;

    invoke-direct {v0, p0, p2}, LB4/m;-><init>(LB4/s;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, LB4/s;->n1:Landroid/widget/EditText;

    new-instance p2, LB4/e;

    invoke-direct {p2, p0, v2}, LB4/e;-><init>(LB4/s;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, LB4/s;->n1:Landroid/widget/EditText;

    new-instance p2, LB4/m;

    invoke-direct {p2, p0, v1}, LB4/m;-><init>(LB4/s;I)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, LB4/s;->R()Z

    invoke-virtual {p0}, Landroidx/fragment/app/t;->l()Landroidx/fragment/app/K;

    move-result-object p1

    new-instance p2, LB4/h;

    invoke-direct {p2, p0}, LB4/h;-><init>(LB4/s;)V

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/K;->Z(Lib/player/base/BaseFragment;Landroidx/fragment/app/O;)V

    iget-object p1, p0, LB4/s;->m0:LC1/a;

    check-cast p1, Landroidx/databinding/e;

    iget-object p1, p1, Landroidx/databinding/e;->t:Landroid/view/View;

    return-object p1
.end method

.method public final w0(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LB4/s;->t0:Ls4/d;

    iput-object p1, v0, Ls4/d;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Lv1/y;->d()V

    invoke-virtual {p0, p1}, LB4/s;->s0(Ljava/util/List;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, LB4/s;->t0:Ls4/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Ls4/d;->f:Ljava/lang/Object;

    invoke-virtual {p1}, Lv1/y;->d()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, LB4/s;->s0(Ljava/util/List;)V

    return-void
.end method

.method public final x0(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, LB4/s;->Q0:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getRemove_favorites()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LB4/s;->l1:Landroid/widget/ImageView;

    const v0, 0x7f080124

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, LB4/s;->p1:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->m()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void

    :cond_0
    iget-object p1, p0, LB4/s;->Q0:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v0, p0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getAdd_to_favorite()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LB4/s;->l1:Landroid/widget/ImageView;

    const v0, 0x7f080123

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, LB4/s;->p1:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->m()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06038e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public final y()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/t;->R:Z

    const/4 v0, 0x0

    iput-object v0, p0, LB4/s;->m0:LC1/a;

    return-void
.end method

.method public final y0(I)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object v0

    invoke-static {v0, v0}, LB/f;->i(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v1

    const-string v2, "fragment_lock"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {v1, v3, p1, v0}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->P()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lz4/y;->T(Ljava/lang/String;)Lz4/y;

    move-result-object v1

    new-instance v3, LE1/t;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4, p0}, LE1/t;-><init>(IILjava/lang/Object;)V

    iput-object v3, v1, Lz4/y;->A0:Lz4/x;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void
.end method

.method public final z0(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, LB4/s;->o1:Landroid/widget/ImageButton;

    const v0, 0x7f080149

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    iget-object p1, p0, LB4/s;->o1:Landroid/widget/ImageButton;

    const v0, 0x7f080148

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
