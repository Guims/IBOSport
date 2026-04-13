.class public abstract Lt5/g;
.super Lm5/J;


# instance fields
.field public r:Lt5/b;


# virtual methods
.method public final x(LV4/i;Ljava/lang/Runnable;)V
    .locals 1

    iget-object p1, p0, Lt5/g;->r:Lt5/b;

    sget-object v0, Lt5/b;->w:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v0, Lt5/j;->g:LE2/j;

    invoke-virtual {p1, p2, v0}, Lt5/b;->b(Ljava/lang/Runnable;LE2/j;)V

    return-void
.end method
