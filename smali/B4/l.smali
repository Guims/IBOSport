.class public final synthetic LB4/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LB4/l;->b:I

    iput-object p2, p0, LB4/l;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 6

    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/p;

    const-string v1, "fetchFonts result is not OK. ("

    iget-object v2, v0, Landroidx/emoji2/text/p;->s:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Landroidx/emoji2/text/p;->w:La/a;

    if-nez v3, :cond_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Landroidx/emoji2/text/p;->c()LG/h;

    move-result-object v2

    iget v3, v2, LG/h;->e:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v4, v0, Landroidx/emoji2/text/p;->s:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v1

    goto/16 :goto_3

    :cond_1
    :goto_0
    if-nez v3, :cond_4

    :try_start_4
    const-string v1, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    sget v3, LF/h;->a:I

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/emoji2/text/p;->r:Lh3/e;

    iget-object v3, v0, Landroidx/emoji2/text/p;->b:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v2}, [LG/h;

    move-result-object v1

    sget-object v4, LB/h;->a:LE2/g;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v1, v5}, LE2/g;->h(Landroid/content/Context;[LG/h;I)Landroid/graphics/Typeface;

    move-result-object v1

    iget-object v3, v0, Landroidx/emoji2/text/p;->b:Landroid/content/Context;

    iget-object v2, v2, LG/h;->a:Landroid/net/Uri;

    invoke-static {v3, v2}, LE5/d;->y(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    :try_start_5
    const-string v3, "EmojiCompat.MetadataRepo.create"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v3, LK1/c;

    invoke-static {v2}, Lcom/bumptech/glide/c;->m(Ljava/nio/MappedByteBuffer;)LY/b;

    move-result-object v2

    invoke-direct {v3, v1, v2}, LK1/c;-><init>(Landroid/graphics/Typeface;LY/b;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v1, v0, Landroidx/emoji2/text/p;->s:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object v2, v0, Landroidx/emoji2/text/p;->w:La/a;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, La/a;->G(LK1/c;)V

    goto :goto_1

    :catchall_3
    move-exception v2

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-virtual {v0}, Landroidx/emoji2/text/p;->b()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    return-void

    :goto_2
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_4
    move-exception v1

    :try_start_c
    sget v2, LF/h;->a:I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to open file."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v1

    :try_start_d
    sget v2, LF/h;->a:I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v1

    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_3
    iget-object v3, v0, Landroidx/emoji2/text/p;->s:Ljava/lang/Object;

    monitor-enter v3

    :try_start_e
    iget-object v2, v0, Landroidx/emoji2/text/p;->w:La/a;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v1}, La/a;->F(Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_6
    move-exception v0

    goto :goto_5

    :cond_5
    :goto_4
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    invoke-virtual {v0}, Landroidx/emoji2/text/p;->b()V

    return-void

    :goto_5
    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v0

    :goto_6
    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, LB4/l;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, Lu0/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu0/c;->b(Lu0/m;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, Lu0/f;

    iget-boolean v1, v0, Lu0/f;->r:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lu0/f;->q:Lu0/j;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lu0/f;->b:Lu0/m;

    invoke-interface {v1, v2}, Lu0/j;->b(Lu0/m;)V

    :cond_1
    iget-object v1, v0, Lu0/f;->s:Lu0/g;

    iget-object v1, v1, Lu0/g;->n:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lu0/f;->r:Z

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/ui/PlayerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_2
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, Lr1/r;

    invoke-virtual {v0}, Lr1/r;->o()V

    return-void

    :pswitch_3
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, Lr1/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr1/d;->d(Z)V

    return-void

    :pswitch_4
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, Lr0/G;

    iget-wide v1, v0, Lr0/G;->i0:J

    const-wide/32 v3, 0x493e0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    iget-object v1, v0, Lr0/G;->s:Lr0/p;

    invoke-interface {v1}, Lr0/p;->i()V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lr0/G;->i0:J

    :cond_2
    return-void

    :pswitch_5
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, Lq0/j;

    invoke-virtual {v0}, Lq0/j;->a()Lq0/b;

    move-result-object v1

    new-instance v2, Lq0/d;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Lq0/d;-><init>(I)V

    const/16 v3, 0x404

    invoke-virtual {v0, v1, v3, v2}, Lq0/j;->f(Lq0/b;ILk0/n;)V

    iget-object v0, v0, Lq0/j;->u:Lk0/q;

    invoke-virtual {v0}, Lk0/q;->d()V

    return-void

    :pswitch_6
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, LK1/c;

    iget-object v1, v0, LK1/c;->t:Ljava/lang/Object;

    check-cast v1, Lr2/c;

    new-instance v2, Lp2/f;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Lp2/f;-><init>(ILjava/lang/Object;)V

    check-cast v1, Lq2/h;

    invoke-virtual {v1, v2}, Lq2/h;->s(Lr2/b;)Ljava/lang/Object;

    return-void

    :pswitch_7
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;->a(Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicEntityProducer;)V

    return-void

    :pswitch_8
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->s:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_9
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, Ll3/j;

    iget-object v1, v0, Ll3/j;->h:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ll3/j;->s(Z)V

    iput-boolean v1, v0, Ll3/j;->m:Z

    return-void

    :pswitch_a
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, Ll3/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ll3/d;->s(Z)V

    return-void

    :pswitch_b
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/series/SeriesMobilePlayerActivity;

    iget v1, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->O0:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    iget-object v0, v0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    sub-int/2addr v1, v2

    iput v1, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->O0:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    add-long/2addr v1, v3

    iget-object v3, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->B0:Landroid/os/Handler;

    iget-object v0, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->C0:LB4/l;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :pswitch_c
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/catchup/CatchUpPlayerActivity;

    iget v1, v0, Lib/player/pages/catchup/CatchUpPlayerActivity;->q0:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_4

    iget-object v0, v0, Lib/player/pages/catchup/CatchUpPlayerActivity;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    sub-int/2addr v1, v2

    iput v1, v0, Lib/player/pages/catchup/CatchUpPlayerActivity;->q0:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    add-long/2addr v1, v3

    iget-object v3, v0, Lib/player/pages/catchup/CatchUpPlayerActivity;->f0:Landroid/os/Handler;

    iget-object v0, v0, Lib/player/pages/catchup/CatchUpPlayerActivity;->g0:LB4/l;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void

    :pswitch_d
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, LS2/e;

    const/4 v1, 0x0

    iput-boolean v1, v0, LS2/e;->c:Z

    iget-object v1, v0, LS2/e;->e:Lw/a;

    check-cast v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v2, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->i:LS/e;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, LS/e;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v1, v0, LS2/e;->b:I

    invoke-virtual {v0, v1}, LS2/e;->a(I)V

    goto :goto_3

    :cond_5
    iget v2, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    iget v0, v0, LS2/e;->b:I

    invoke-virtual {v1, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->r(I)V

    :cond_6
    :goto_3
    return-void

    :pswitch_e
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/timepicker/e;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/e;->m()V

    return-void

    :pswitch_f
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1, v2}, Lz/b;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :pswitch_10
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/B;

    iget-object v1, v0, Landroidx/lifecycle/B;->u:Landroidx/lifecycle/t;

    iget v2, v0, Landroidx/lifecycle/B;->q:I

    const/4 v3, 0x1

    if-nez v2, :cond_7

    iput-boolean v3, v0, Landroidx/lifecycle/B;->r:Z

    sget-object v2, Landroidx/lifecycle/l;->ON_PAUSE:Landroidx/lifecycle/l;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/t;->d(Landroidx/lifecycle/l;)V

    :cond_7
    iget v2, v0, Landroidx/lifecycle/B;->b:I

    if-nez v2, :cond_8

    iget-boolean v2, v0, Landroidx/lifecycle/B;->r:Z

    if-eqz v2, :cond_8

    sget-object v2, Landroidx/lifecycle/l;->ON_STOP:Landroidx/lifecycle/l;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/t;->d(Landroidx/lifecycle/l;)V

    iput-boolean v3, v0, Landroidx/lifecycle/B;->s:Z

    :cond_8
    return-void

    :pswitch_11
    invoke-direct {p0}, LB4/l;->a()V

    return-void

    :pswitch_12
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/k;

    invoke-static {v0}, Landroidx/activity/k;->a(Landroidx/activity/k;)V

    return-void

    :pswitch_13
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/i;

    iget-object v1, v0, Landroidx/activity/i;->q:Ljava/lang/Runnable;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/activity/i;->q:Ljava/lang/Runnable;

    :cond_9
    return-void

    :pswitch_14
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/j;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    :pswitch_15
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Lv1/G;->B0()V

    return-void

    :pswitch_16
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, LH0/l;

    iget-object v1, v0, LH0/l;->w:Landroid/view/Surface;

    if-eqz v1, :cond_a

    iget-object v2, v0, LH0/l;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LH0/k;

    invoke-interface {v3, v1}, LH0/k;->onVideoSurfaceDestroyed(Landroid/view/Surface;)V

    goto :goto_4

    :cond_a
    iget-object v2, v0, LH0/l;->v:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    :cond_c
    const/4 v1, 0x0

    iput-object v1, v0, LH0/l;->v:Landroid/graphics/SurfaceTexture;

    iput-object v1, v0, LH0/l;->w:Landroid/view/Surface;

    return-void

    :pswitch_17
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, LE1/d;

    iget-object v1, v0, LE1/d;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, LE1/d;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->isMarked()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, LE1/d;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG3/d;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, v1, LG3/d;->a:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1

    iget-object v1, v0, LE1/d;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LG3/d;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2

    :cond_d
    :goto_5
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_e

    iget-object v1, v0, LE1/d;->d:Ljava/lang/Object;

    check-cast v1, LK3/c;

    iget-object v3, v1, LK3/c;->q:Ljava/lang/Object;

    check-cast v3, LG3/g;

    iget-object v1, v1, LK3/c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-boolean v0, v0, LE1/d;->a:Z

    invoke-virtual {v3, v1, v2, v0}, LG3/g;->h(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_e
    return-void

    :goto_6
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    :pswitch_18
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, LG0/t;

    iget v1, v0, LG0/t;->o:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, LG0/t;->o:I

    return-void

    :pswitch_19
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/playlist/PlaylistActivity;

    iget-object v1, v0, Lib/player/pages/playlist/PlaylistActivity;->g0:Lib/player/base/view/LiveVerticalGridView;

    iget v0, v0, Lib/player/pages/playlist/PlaylistActivity;->B0:I

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->F(I)Lv1/X;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, v0, Lv1/X;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_f
    return-void

    :pswitch_1a
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, Lib/player/pages/movie/MovieMobilePlayerActivity;

    iget v1, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->I0:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_10

    iget-object v0, v0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_10
    sub-int/2addr v1, v2

    iput v1, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->I0:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    add-long/2addr v1, v3

    iget-object v3, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->w0:Landroid/os/Handler;

    iget-object v0, v0, Lib/player/pages/movie/MovieMobilePlayerActivity;->x0:LB4/l;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :goto_7
    return-void

    :pswitch_1b
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, LB4/t;

    iget-object v1, v0, LB4/s;->E0:Landroid/os/Handler;

    iget-object v2, v0, LB4/s;->H0:LB4/l;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v2, v0, LB4/s;->K0:I

    const/4 v3, 0x1

    if-nez v2, :cond_17

    const-string v2, ""

    iget-object v4, v0, LB4/s;->u0:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v6

    :goto_8
    iget-object v8, v0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v8}, Lio/realm/T;->size()I

    move-result v8

    if-ge v7, v8, :cond_12

    iget-object v8, v0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v8, v7}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lib/player/models/EPGChannel;

    invoke-virtual {v8}, Lib/player/models/EPGChannel;->getNum()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iget v9, v0, LB4/s;->x0:I

    if-ne v8, v9, :cond_11

    iget-object v5, v0, LB4/s;->o0:Lio/realm/T;

    invoke-virtual {v5, v7}, Lio/realm/T;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lib/player/models/EPGChannel;

    aput v7, v4, v3

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_12
    const/16 v7, 0x8

    if-nez v5, :cond_13

    iput-object v2, v0, LB4/s;->C0:Ljava/lang/String;

    iget-object v4, v0, LB4/s;->f1:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, LB4/s;->f1:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v0, Lib/player/base/BaseFragment;->k0:Lib/player/models/WordModels;

    invoke-virtual {v4}, Lib/player/models/WordModels;->getNo_channels()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_a

    :cond_13
    iput-object v2, v0, LB4/s;->C0:Ljava/lang/String;

    iget-object v8, v0, LB4/s;->f1:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, LB4/s;->f1:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, LB4/s;->n0:Ljava/util/List;

    aget v8, v4, v6

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/CategoryModel;

    invoke-virtual {v2}, Lib/player/models/CategoryModel;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v8, "all_id"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v0, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    invoke-virtual {v5}, Lib/player/models/EPGChannel;->getCategory_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lib/player/models/EPGChannel;->getCategory_name()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lib/player/base/n;->d(Lib/player/base/helper/w;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    aget v2, v4, v3

    const/4 v4, 0x2

    invoke-virtual {v0, v5, v2, v4}, LB4/s;->v0(Lib/player/models/EPGChannel;II)V

    goto :goto_a

    :cond_14
    invoke-virtual {v0, v5}, LB4/s;->o0(Lib/player/models/EPGChannel;)V

    invoke-virtual {v0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lib/player/base/helper/d;->m(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v5, v4, v3

    invoke-virtual {v2, v5}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    goto :goto_9

    :cond_15
    iget-object v2, v0, LB4/s;->N0:Lib/player/base/view/LiveVerticalGridView;

    aget v5, v4, v3

    invoke-virtual {v2, v5}, Landroidx/leanback/widget/f;->e0(I)V

    :goto_9
    iget-object v2, v0, LB4/s;->G0:LB4/b;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, v0, LB4/s;->A0:Ljava/lang/String;

    invoke-virtual {v0, v2}, LB4/s;->c0(Ljava/lang/String;)V

    aget v2, v4, v3

    invoke-virtual {v0, v2}, LB4/s;->U(I)V

    iget-object v2, v0, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v7, :cond_16

    iget-boolean v2, v0, LB4/s;->D0:Z

    if-eqz v2, :cond_16

    iget-object v2, v0, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    iget-object v2, v0, LB4/s;->F0:LB4/l;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LB4/s;->k0()V

    :cond_17
    :goto_a
    iget v2, v0, LB4/s;->K0:I

    sub-int/2addr v2, v3

    iput v2, v0, LB4/s;->K0:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    iget-object v0, v0, LB4/s;->H0:LB4/l;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_1c
    iget-object v0, p0, LB4/l;->q:Ljava/lang/Object;

    check-cast v0, LB4/s;

    iget-object v1, v0, LB4/s;->S0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, v0, LB4/s;->S0:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x2

    iput v1, v0, LB4/s;->u1:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LB4/s;->u0(Z)V

    :cond_18
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
