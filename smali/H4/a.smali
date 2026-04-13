.class public abstract LH4/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(LI4/a;)Lio/reactivex/Scheduler;
    .locals 1

    :try_start_0
    sget-object p0, LI4/b;->a:LI4/d;

    check-cast p0, Lio/reactivex/Scheduler;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Scheduler Callable returned null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lio/reactivex/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
