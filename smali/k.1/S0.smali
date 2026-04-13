.class public final Lk/S0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lk/S0;->b:I

    iput-object p2, p0, Lk/S0;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lw2/h;LE1/t;)V
    .locals 0

    const/4 p1, 0x6

    iput p1, p0, Lk/S0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lk/S0;->q:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lk/S0;->b:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lk/S0;->q:Ljava/lang/Object;

    check-cast v0, Lz5/c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lk/S0;->q:Ljava/lang/Object;

    check-cast v1, Lz5/c;

    invoke-virtual {v1}, Lz5/c;->c()Lz5/a;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    if-eqz v1, :cond_3

    iget-object v0, v1, Lz5/a;->a:Lz5/b;

    invoke-static {v0}, Le5/g;->c(Ljava/lang/Object;)V

    sget-object v2, Lz5/c;->i:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const-string v5, "starting"

    invoke-static {v1, v0, v5}, Lcom/bumptech/glide/d;->a(Lz5/a;Lz5/b;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-wide/16 v3, -0x1

    :goto_1
    :try_start_1
    iget-object v5, p0, Lk/S0;->q:Ljava/lang/Object;

    check-cast v5, Lz5/c;

    invoke-static {v5, v1}, Lz5/c;->a(Lz5/c;Lz5/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Lcom/bumptech/glide/d;->k(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "finished run in "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/bumptech/glide/d;->a(Lz5/a;Lz5/b;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_2
    iget-object v6, p0, Lk/S0;->q:Ljava/lang/Object;

    check-cast v6, Lz5/c;

    iget-object v6, v6, Lz5/c;->g:LM4/a;

    iget-object v6, v6, LM4/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v6, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v5

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-static {v6, v7}, Lcom/bumptech/glide/d;->k(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "failed a run in "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/bumptech/glide/d;->a(Lz5/a;Lz5/b;Ljava/lang/String;)V

    :cond_2
    throw v5

    :cond_3
    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1

    :pswitch_0
    const/4 v0, 0x0

    throw v0

    :pswitch_1
    iget-object v0, p0, Lk/S0;->q:Ljava/lang/Object;

    check-cast v0, Lv0/f;

    iget-object v0, v0, Lv0/f;->b:Ljava/lang/Object;

    check-cast v0, Lw2/j;

    iget-object v0, v0, Lw2/j;->c:Lv2/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " disconnecting because it was signed out."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lv2/a;->b(Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lk/S0;->q:Ljava/lang/Object;

    check-cast v0, Lw2/j;

    invoke-virtual {v0}, Lw2/j;->h()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lk/S0;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R0()Z

    return-void

    :pswitch_4
    iget-object v0, p0, Lk/S0;->q:Ljava/lang/Object;

    check-cast v0, Lv1/k;

    iget-object v1, v0, Lv1/k;->z:Landroid/animation/ValueAnimator;

    iget v2, v0, Lv1/k;->A:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    if-eq v2, v3, :cond_5

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    const/4 v2, 0x3

    iput v2, v0, Lv1/k;->A:I

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    new-array v2, v3, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x0

    aput v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/16 v0, 0x1f4

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void

    :pswitch_5
    iget-object v0, p0, Lk/S0;->q:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->r:Ll3/m;

    iget-object v0, v0, Ll3/m;->v:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    invoke-virtual {v0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    return-void

    :pswitch_6
    iget-object v0, p0, Lk/S0;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_6

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->I:Lk/k;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lk/k;->l()Z

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
