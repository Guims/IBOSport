.class public final LN1/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    new-instance v0, LE2/f;

    invoke-direct {v0, p1}, LE2/f;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
