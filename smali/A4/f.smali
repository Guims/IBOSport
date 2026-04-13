.class public final LA4/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LA4/f;->b:I

    iput-object p2, p0, LA4/f;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    move-object/from16 v1, p0

    iget v0, v1, LA4/f;->b:I

    const/4 v2, 0x2

    const-wide/16 v3, 0x2134

    const-wide/16 v5, 0x1d4c

    const/4 v7, 0x0

    const-wide/16 v8, 0x2710

    const/4 v10, -0x1

    const-wide/16 v11, 0x3e8

    const/16 v13, 0x62

    const/4 v14, 0x1

    const/4 v15, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-boolean v2, v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->u:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v0, v15}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iput-boolean v15, v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->u:Z

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, Lk/o0;

    iput-object v7, v0, Lk/o0;->A:LA4/f;

    invoke-virtual {v0}, Lk/o0;->drawableStateChanged()V

    return-void

    :pswitch_1
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, LE1/k;

    iget-object v0, v0, LE1/k;->r:Ljava/lang/Object;

    check-cast v0, Lio/realm/w;

    iget-object v0, v0, Lio/realm/w;->s:LA3/d;

    invoke-virtual {v0}, LA3/d;->n()V

    return-void

    :pswitch_2
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/series/SeriesPlayerActivity;

    iget-object v2, v0, Lib/player/pages/series/SeriesPlayerActivity;->G0:Landroid/os/Handler;

    :try_start_0
    sget v3, Lib/player/pages/series/SeriesPlayerActivity;->V0:I

    iget-object v3, v0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v3

    iget-object v5, v0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v5}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v5

    iget-object v7, v0, Lib/player/pages/series/SeriesPlayerActivity;->f0:Landroid/widget/TextView;

    invoke-static {v5, v6, v15, v15}, Lv4/c;->w(JZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lib/player/pages/series/SeriesPlayerActivity;->g0:Landroid/widget/TextView;

    invoke-static {v3, v4, v15, v15}, Lv4/c;->w(JZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v5, v6, v3, v4}, Lv4/c;->p(JJ)I

    move-result v3

    iget-object v4, v0, Lib/player/pages/series/SeriesPlayerActivity;->l0:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-le v3, v13, :cond_1

    iget-object v3, v0, Lib/player/pages/series/SeriesPlayerActivity;->U0:LA4/f;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, v0, Lib/player/pages/series/SeriesPlayerActivity;->l0:Landroid/widget/SeekBar;

    invoke-virtual {v0, v15}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    invoke-virtual {v2, v1, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :pswitch_3
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/series/SeriesMobilePlayerActivity;

    iget-object v2, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->B0:Landroid/os/Handler;

    :try_start_1
    sget v3, Lib/player/pages/series/SeriesMobilePlayerActivity;->Q0:I

    iget-object v3, v0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v3

    iget-object v5, v0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v5}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v5

    iget-object v7, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->d0:Landroid/widget/TextView;

    invoke-static {v5, v6, v15, v15}, Lv4/c;->w(JZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->e0:Landroid/widget/TextView;

    invoke-static {v3, v4, v15, v15}, Lv4/c;->w(JZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v5, v6, v3, v4}, Lv4/c;->p(JJ)I

    move-result v3

    iget-object v4, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->h0:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-le v3, v13, :cond_2

    iget-object v3, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->P0:LA4/f;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iget-object v0, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->h0:Landroid/widget/SeekBar;

    invoke-virtual {v0, v15}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_2
    invoke-virtual {v2, v1, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :pswitch_4
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lib/player/pages/series/j;

    iget-object v0, v2, Lib/player/pages/series/j;->y0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v15

    :goto_2
    :try_start_2
    iget-object v3, v2, Lib/player/pages/series/j;->y0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, v2, Lib/player/pages/series/j;->y0:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lib/player/pages/series/j;->y0:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Lib/player/pages/series/j;->z0:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v10

    :goto_3
    if-ne v0, v10, :cond_5

    iget-object v0, v2, Lib/player/pages/series/j;->y0:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lib/player/pages/series/j;->z0:Ljava/lang/String;

    goto :goto_4

    :cond_5
    iget-object v3, v2, Lib/player/pages/series/j;->y0:Ljava/util/ArrayList;

    add-int/2addr v0, v14

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lib/player/pages/series/j;->z0:Ljava/lang/String;

    :goto_4
    invoke-virtual {v2}, Landroidx/fragment/app/t;->J()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/manager/m;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/manager/m;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v0

    iget-object v3, v2, Lib/player/pages/series/j;->z0:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/m;->n(Ljava/lang/String;)Lcom/bumptech/glide/k;

    move-result-object v0

    iget-object v3, v2, Lib/player/pages/series/j;->w0:Lx4/q;

    iget-object v3, v3, Lx4/q;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/k;->A(Landroid/widget/ImageView;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_6
    iget-object v0, v2, Lib/player/pages/series/j;->A0:Landroid/os/Handler;

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_5
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/catchup/CatchUpPlayerActivity;

    iget-object v2, v0, Lib/player/pages/catchup/CatchUpPlayerActivity;->f0:Landroid/os/Handler;

    :try_start_3
    iget-object v3, v0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v3

    iget-object v5, v0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v5}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v5

    iget-object v7, v0, Lib/player/pages/catchup/CatchUpPlayerActivity;->Y:Landroid/widget/TextView;

    invoke-static {v5, v6, v15, v15}, Lv4/c;->w(JZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lib/player/pages/catchup/CatchUpPlayerActivity;->Z:Landroid/widget/TextView;

    invoke-static {v3, v4, v15, v15}, Lv4/c;->w(JZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v5, v6, v3, v4}, Lv4/c;->p(JJ)I

    move-result v3

    iget-object v4, v0, Lib/player/pages/catchup/CatchUpPlayerActivity;->d0:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-le v3, v13, :cond_7

    iget-object v3, v0, Lib/player/pages/catchup/CatchUpPlayerActivity;->r0:LA4/f;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    iget-object v0, v0, Lib/player/pages/catchup/CatchUpPlayerActivity;->d0:Landroid/widget/SeekBar;

    invoke-virtual {v0, v15}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_7
    invoke-virtual {v2, v1, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_7
    return-void

    :pswitch_6
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/catchup/e;

    iget-object v2, v0, Lib/player/pages/catchup/e;->n0:Lx4/a;

    iget-object v2, v2, Lx4/a;->G:Landroid/widget/ScrollView;

    const-string v7, "scrollY"

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    filled-new-array {v15, v8}, [I

    move-result-object v8

    invoke-static {v2, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, v0, Lib/player/pages/catchup/e;->F0:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_7
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/picker/DatePicker;

    iget v3, v0, Landroidx/leanback/widget/picker/DatePicker;->J:I

    iget v4, v0, Landroidx/leanback/widget/picker/DatePicker;->I:I

    iget v5, v0, Landroidx/leanback/widget/picker/DatePicker;->K:I

    filled-new-array {v3, v4, v5}, [I

    move-result-object v3

    move v4, v14

    move v5, v4

    :goto_8
    if-ltz v2, :cond_12

    aget v6, v3, v2

    if-gez v6, :cond_8

    goto/16 :goto_11

    :cond_8
    sget-object v8, Landroidx/leanback/widget/picker/DatePicker;->R:[I

    aget v8, v8, v2

    iget-object v9, v0, Lf0/d;->r:Ljava/util/ArrayList;

    if-nez v9, :cond_9

    move-object v6, v7

    goto :goto_9

    :cond_9
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf0/e;

    :goto_9
    if-eqz v4, :cond_b

    iget-object v9, v0, Landroidx/leanback/widget/picker/DatePicker;->N:Ljava/util/Calendar;

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget v10, v6, Lf0/e;->b:I

    if-eq v9, v10, :cond_a

    iput v9, v6, Lf0/e;->b:I

    :goto_a
    move v9, v14

    goto :goto_b

    :cond_a
    move v9, v15

    goto :goto_b

    :cond_b
    iget-object v9, v0, Landroidx/leanback/widget/picker/DatePicker;->P:Ljava/util/Calendar;

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v9

    iget v10, v6, Lf0/e;->b:I

    if-eq v9, v10, :cond_a

    iput v9, v6, Lf0/e;->b:I

    goto :goto_a

    :goto_b
    if-eqz v5, :cond_d

    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->O:Ljava/util/Calendar;

    invoke-virtual {v10, v8}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget v11, v6, Lf0/e;->c:I

    if-eq v10, v11, :cond_c

    iput v10, v6, Lf0/e;->c:I

    :goto_c
    move v10, v14

    goto :goto_d

    :cond_c
    move v10, v15

    :goto_d
    or-int/2addr v9, v10

    goto :goto_e

    :cond_d
    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->P:Ljava/util/Calendar;

    invoke-virtual {v10, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v10

    iget v11, v6, Lf0/e;->c:I

    if-eq v10, v11, :cond_c

    iput v10, v6, Lf0/e;->c:I

    goto :goto_c

    :goto_e
    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->P:Ljava/util/Calendar;

    invoke-virtual {v10, v8}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-object v11, v0, Landroidx/leanback/widget/picker/DatePicker;->N:Ljava/util/Calendar;

    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ne v10, v11, :cond_e

    move v10, v14

    goto :goto_f

    :cond_e
    move v10, v15

    :goto_f
    and-int/2addr v4, v10

    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->P:Ljava/util/Calendar;

    invoke-virtual {v10, v8}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-object v11, v0, Landroidx/leanback/widget/picker/DatePicker;->O:Ljava/util/Calendar;

    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ne v10, v11, :cond_f

    move v10, v14

    goto :goto_10

    :cond_f
    move v10, v15

    :goto_10
    and-int/2addr v5, v10

    if-eqz v9, :cond_10

    aget v9, v3, v2

    invoke-virtual {v0, v9, v6}, Lf0/d;->a(ILf0/e;)V

    :cond_10
    aget v6, v3, v2

    iget-object v9, v0, Landroidx/leanback/widget/picker/DatePicker;->P:Ljava/util/Calendar;

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v9, v0, Lf0/d;->r:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lf0/e;

    iget v10, v9, Lf0/e;->a:I

    if-eq v10, v8, :cond_11

    iput v8, v9, Lf0/e;->a:I

    iget-object v9, v0, Lf0/d;->q:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/leanback/widget/VerticalGridView;

    if-eqz v9, :cond_11

    iget-object v10, v0, Lf0/d;->r:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf0/e;

    iget v6, v6, Lf0/e;->b:I

    sub-int/2addr v8, v6

    invoke-virtual {v9, v8}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    :cond_11
    :goto_11
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_8

    :cond_12
    return-void

    :pswitch_8
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/m;

    iget-object v2, v0, Lcom/bumptech/glide/m;->r:Lcom/bumptech/glide/manager/h;

    invoke-interface {v2, v0}, Lcom/bumptech/glide/manager/h;->c(Lcom/bumptech/glide/manager/i;)V

    return-void

    :pswitch_9
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/E;

    iget-object v0, v0, Landroidx/leanback/widget/E;->a:Landroidx/leanback/widget/SearchBar;

    iput-boolean v14, v0, Landroidx/leanback/widget/SearchBar;->y:Z

    iget-object v0, v0, Landroidx/leanback/widget/SearchBar;->q:Landroidx/leanback/widget/SpeechOrbView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void

    :pswitch_a
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/o;

    invoke-virtual {v0}, Lv1/G;->B0()V

    return-void

    :pswitch_b
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/K;

    invoke-virtual {v0, v14}, Landroidx/fragment/app/K;->y(Z)Z

    return-void

    :pswitch_c
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/m;

    iget-object v2, v0, Landroidx/fragment/app/m;->m0:Landroidx/fragment/app/k;

    iget-object v0, v0, Landroidx/fragment/app/m;->u0:Landroid/app/Dialog;

    invoke-virtual {v2, v0}, Landroidx/fragment/app/k;->onDismiss(Landroid/content/DialogInterface;)V

    return-void

    :pswitch_d
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/e;

    iget-object v2, v0, Landroidx/fragment/app/e;->b:Landroid/view/ViewGroup;

    iget-object v3, v0, Landroidx/fragment/app/e;->c:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, v0, Landroidx/fragment/app/e;->d:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/g;->d()V

    return-void

    :pswitch_e
    monitor-enter p0

    :try_start_4
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/e;

    iput-boolean v15, v0, Landroidx/databinding/e;->s:Z

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_12
    sget-object v0, Landroidx/databinding/e;->z:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_13

    goto :goto_12

    :cond_13
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/e;

    iget-object v0, v0, Landroidx/databinding/e;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/e;

    iget-object v0, v0, Landroidx/databinding/e;->t:Landroid/view/View;

    sget-object v2, Landroidx/databinding/e;->A:Landroidx/databinding/c;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/e;

    iget-object v0, v0, Landroidx/databinding/e;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_13

    :cond_14
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/e;

    iget-boolean v2, v0, Landroidx/databinding/e;->u:Z

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Landroidx/databinding/e;->c0()V

    goto :goto_13

    :cond_15
    invoke-virtual {v0}, Landroidx/databinding/e;->Y()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_13

    :cond_16
    iput-boolean v14, v0, Landroidx/databinding/e;->u:Z

    invoke-virtual {v0}, Landroidx/databinding/e;->X()V

    iput-boolean v15, v0, Landroidx/databinding/e;->u:Z

    :goto_13
    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :pswitch_f
    :try_start_6
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/j;

    invoke-static {v0}, Landroidx/activity/j;->i(Landroidx/activity/j;)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_16

    :catch_4
    move-exception v0

    goto :goto_14

    :catch_5
    move-exception v0

    goto :goto_15

    :goto_14
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Attempt to invoke virtual method \'android.os.Handler android.app.FragmentHostCallback.getHandler()\' on a null object reference"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_16

    :cond_17
    throw v0

    :goto_15
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Can not perform this action after onSaveInstanceState"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    :goto_16
    return-void

    :cond_18
    throw v0

    :pswitch_10
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, LS2/e;

    iput-boolean v15, v0, LS2/e;->c:Z

    iget-object v3, v0, LS2/e;->e:Lw/a;

    check-cast v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v4, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:LS/e;

    if-eqz v4, :cond_19

    invoke-virtual {v4}, LS/e;->f()Z

    move-result v4

    if-eqz v4, :cond_19

    iget v2, v0, LS2/e;->b:I

    invoke-virtual {v0, v2}, LS2/e;->a(I)V

    goto :goto_17

    :cond_19
    iget v4, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:I

    if-ne v4, v2, :cond_1a

    iget v0, v0, LS2/e;->b:I

    invoke-virtual {v3, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C(I)V

    :cond_1a
    :goto_17
    return-void

    :pswitch_11
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, LS/e;

    invoke-virtual {v0, v15}, LS/e;->n(I)V

    return-void

    :pswitch_12
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, LP/g;

    iget-object v2, v0, LP/g;->r:Lk/o0;

    iget-object v3, v0, LP/g;->b:LP/a;

    iget-boolean v4, v0, LP/g;->D:Z

    if-nez v4, :cond_1b

    goto/16 :goto_19

    :cond_1b
    iget-boolean v4, v0, LP/g;->B:Z

    if-eqz v4, :cond_1c

    iput-boolean v15, v0, LP/g;->B:Z

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, LP/a;->e:J

    const-wide/16 v6, -0x1

    iput-wide v6, v3, LP/a;->g:J

    iput-wide v4, v3, LP/a;->f:J

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, v3, LP/a;->h:F

    :cond_1c
    iget-wide v4, v3, LP/a;->g:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1d

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-wide v8, v3, LP/a;->g:J

    iget v10, v3, LP/a;->i:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    cmp-long v4, v4, v8

    if-lez v4, :cond_1d

    goto :goto_18

    :cond_1d
    invoke-virtual {v0}, LP/g;->e()Z

    move-result v4

    if-nez v4, :cond_1e

    :goto_18
    iput-boolean v15, v0, LP/g;->D:Z

    goto :goto_19

    :cond_1e
    iget-boolean v4, v0, LP/g;->C:Z

    if-eqz v4, :cond_1f

    iput-boolean v15, v0, LP/g;->C:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v20, 0x3

    const/16 v21, 0x0

    move-wide/from16 v18, v16

    invoke-static/range {v16 .. v23}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v2, v4}, Lk/o0;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    :cond_1f
    iget-wide v4, v3, LP/a;->f:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_20

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, LP/a;->a(J)F

    move-result v6

    const/high16 v7, -0x3f800000    # -4.0f

    mul-float/2addr v7, v6

    mul-float/2addr v7, v6

    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v6, v8

    add-float/2addr v6, v7

    iget-wide v7, v3, LP/a;->f:J

    sub-long v7, v4, v7

    iput-wide v4, v3, LP/a;->f:J

    long-to-float v4, v7

    mul-float/2addr v4, v6

    iget v3, v3, LP/a;->d:F

    mul-float/2addr v4, v3

    float-to-int v3, v4

    iget-object v0, v0, LP/g;->F:Lk/o0;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->scrollListBy(I)V

    sget-object v0, LJ/U;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_19
    return-void

    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_13
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, Lio/realm/w;

    invoke-virtual {v0}, Lio/realm/w;->run()V

    return-void

    :pswitch_14
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, LL2/m;

    iget-object v2, v0, LL2/m;->r:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, LL2/m;

    iget-object v0, v0, LL2/m;->s:Ljava/lang/Object;

    check-cast v0, LL2/c;

    invoke-interface {v0}, LL2/c;->i()V

    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :pswitch_15
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, LK1/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1a
    :try_start_8
    iget-object v2, v0, LK1/c;->s:Ljava/lang/Object;

    check-cast v2, Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v2

    check-cast v2, LK1/b;

    invoke-virtual {v0, v2}, LK1/c;->g(LK1/b;)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_1a

    :catch_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1a

    :pswitch_16
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, LE1/q;

    iget-object v2, v0, LE1/q;->b:LE1/b;

    invoke-virtual {v2, v15}, LE1/b;->n(I)V

    sget-object v3, LE1/B;->l:LE1/f;

    const/16 v4, 0x18

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5, v3}, LE1/b;->u(IILE1/f;)V

    invoke-virtual {v0, v3}, LE1/q;->a(LE1/f;)V

    return-void

    :pswitch_17
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, LE0/q;

    invoke-interface {v0}, LE0/q;->b()V

    return-void

    :pswitch_18
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LD4/x;

    iget-object v0, v2, LD4/x;->y0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    move v0, v15

    :goto_1b
    :try_start_9
    iget-object v3, v2, LD4/x;->y0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    iget-object v3, v2, LD4/x;->y0:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_21

    iget-object v3, v2, LD4/x;->y0:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, LD4/x;->z0:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_1c

    :catch_7
    move-exception v0

    goto :goto_1e

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_22
    move v0, v10

    :goto_1c
    if-ne v0, v10, :cond_23

    iget-object v0, v2, LD4/x;->y0:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, LD4/x;->z0:Ljava/lang/String;

    goto :goto_1d

    :cond_23
    iget-object v3, v2, LD4/x;->y0:Ljava/util/ArrayList;

    add-int/2addr v0, v14

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, LD4/x;->z0:Ljava/lang/String;

    :goto_1d
    invoke-virtual {v2}, Landroidx/fragment/app/t;->J()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/manager/m;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/manager/m;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v0

    iget-object v3, v2, LD4/x;->z0:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/m;->n(Ljava/lang/String;)Lcom/bumptech/glide/k;

    move-result-object v0

    iget-object v3, v2, LD4/x;->w0:Lx4/o;

    iget-object v3, v3, Lx4/o;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/k;->A(Landroid/widget/ImageView;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_1f

    :goto_1e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_24
    :goto_1f
    iget-object v0, v2, LD4/x;->A0:Landroid/os/Handler;

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_19
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/movie/MoviePlayerActivity;

    iget-object v2, v0, Lib/player/pages/movie/MoviePlayerActivity;->t0:Landroid/os/Handler;

    :try_start_a
    sget v3, Lib/player/pages/movie/MoviePlayerActivity;->K0:I

    iget-object v3, v0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v3, :cond_25

    invoke-interface {v3}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v3

    iget-object v5, v0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v5}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v5

    iget-object v7, v0, Lib/player/pages/movie/MoviePlayerActivity;->i0:Landroid/widget/TextView;

    invoke-static {v5, v6, v15, v15}, Lv4/c;->w(JZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lib/player/pages/movie/MoviePlayerActivity;->j0:Landroid/widget/TextView;

    invoke-static {v3, v4, v15, v15}, Lv4/c;->w(JZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v5, v6, v3, v4}, Lv4/c;->p(JJ)I

    move-result v3

    iget-object v4, v0, Lib/player/pages/movie/MoviePlayerActivity;->o0:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-le v3, v13, :cond_25

    iget-object v3, v0, Lib/player/pages/movie/MoviePlayerActivity;->J0:LA4/f;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_20

    :catch_8
    iget-object v0, v0, Lib/player/pages/movie/MoviePlayerActivity;->o0:Landroid/widget/SeekBar;

    invoke-virtual {v0, v15}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_25
    invoke-virtual {v2, v1, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_20
    return-void

    :pswitch_1a
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/movie/MovieMobilePlayerActivity;

    iget-object v2, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->w0:Landroid/os/Handler;

    :try_start_b
    sget v3, Lib/player/pages/movie/MovieMobilePlayerActivity;->N0:I

    iget-object v3, v0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v3, :cond_26

    invoke-interface {v3}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v3

    iget-object v5, v0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v5}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v5

    iget-object v7, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->k0:Landroid/widget/TextView;

    invoke-static {v5, v6, v15, v15}, Lv4/c;->w(JZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->l0:Landroid/widget/TextView;

    invoke-static {v3, v4, v15, v15}, Lv4/c;->w(JZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v5, v6, v3, v4}, Lv4/c;->p(JJ)I

    move-result v3

    iget-object v4, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->o0:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-le v3, v13, :cond_26

    iget-object v3, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->M0:LA4/f;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_21

    :catch_9
    iget-object v0, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->o0:Landroid/widget/SeekBar;

    invoke-virtual {v0, v15}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_26
    invoke-virtual {v2, v1, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_21
    return-void

    :pswitch_1b
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    check-cast v0, LC4/b;

    iget-object v2, v0, LC4/b;->n0:Lx4/c;

    iget-object v2, v2, Lx4/c;->E:Landroid/widget/ScrollView;

    const-string v7, "scrollY"

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    filled-new-array {v15, v8}, [I

    move-result-object v8

    invoke-static {v2, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, v0, LC4/b;->y0:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_1c
    iget-object v0, v1, LA4/f;->q:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LA4/p;

    iget-object v0, v2, LA4/p;->t0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    move v0, v15

    :goto_22
    :try_start_c
    iget-object v3, v2, LA4/p;->t0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_28

    iget-object v3, v2, LA4/p;->t0:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_27

    iget-object v3, v2, LA4/p;->t0:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, LA4/p;->r0:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    goto :goto_23

    :catch_a
    move-exception v0

    goto :goto_25

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_28
    move v0, v10

    :goto_23
    if-ne v0, v10, :cond_29

    iget-object v0, v2, LA4/p;->t0:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, LA4/p;->r0:Ljava/lang/String;

    goto :goto_24

    :cond_29
    iget-object v3, v2, LA4/p;->t0:Ljava/util/ArrayList;

    add-int/2addr v0, v14

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, LA4/p;->r0:Ljava/lang/String;

    :goto_24
    invoke-virtual {v2}, Landroidx/fragment/app/t;->J()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/manager/m;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/manager/m;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v0

    iget-object v3, v2, LA4/p;->r0:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/m;->n(Ljava/lang/String;)Lcom/bumptech/glide/k;

    move-result-object v0

    iget-object v3, v2, LA4/p;->u0:Lx4/g;

    iget-object v3, v3, Lx4/g;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/k;->A(Landroid/widget/ImageView;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_26

    :goto_25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2a
    :goto_26
    iget-object v0, v2, LA4/p;->v0:Landroid/os/Handler;

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
