.class public final LP4/f;
.super Ljava/lang/Object;

# interfaces
.implements LP4/g;


# static fields
.field public static final a:Lio/reactivex/BackpressureStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lio/reactivex/BackpressureStrategy;->LATEST:Lio/reactivex/BackpressureStrategy;

    sput-object v0, LP4/f;->a:Lio/reactivex/BackpressureStrategy;

    return-void
.end method

.method public static e()Lio/reactivex/Scheduler;
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, LI4/c;->a:I

    new-instance v1, LI4/d;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1}, LI4/d;-><init>()V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No looper found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lio/realm/f;Lio/realm/i;)Lio/reactivex/Observable;
    .locals 0

    invoke-virtual {p1}, Lio/realm/d;->y()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, LP4/a;

    invoke-direct {p1, p2}, LP4/a;-><init>(Lio/realm/internal/y;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, LP4/f;->e()Lio/reactivex/Scheduler;

    move-result-object p1

    new-instance p2, LP4/e;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lio/realm/y;Lio/realm/internal/y;)Lio/reactivex/Observable;
    .locals 0

    invoke-virtual {p1}, Lio/realm/d;->y()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, LP4/a;

    invoke-direct {p1, p2}, LP4/a;-><init>(Lio/realm/internal/y;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, LP4/f;->e()Lio/reactivex/Scheduler;

    move-result-object p1

    new-instance p2, LP4/c;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lio/realm/f;Lio/realm/i;)Lio/reactivex/Flowable;
    .locals 1

    invoke-virtual {p1}, Lio/realm/d;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lio/reactivex/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, LP4/f;->e()Lio/reactivex/Scheduler;

    move-result-object p2

    new-instance v0, LP4/d;

    invoke-direct {v0, p1}, LP4/d;-><init>(Lio/realm/f;)V

    sget-object p1, LP4/f;->a:Lio/reactivex/BackpressureStrategy;

    invoke-static {v0, p1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lio/realm/y;Lio/realm/internal/y;)Lio/reactivex/Flowable;
    .locals 1

    invoke-virtual {p1}, Lio/realm/d;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lio/reactivex/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, LP4/f;->e()Lio/reactivex/Scheduler;

    move-result-object p2

    new-instance v0, LP4/b;

    invoke-direct {v0, p1}, LP4/b;-><init>(Lio/realm/y;)V

    sget-object p1, LP4/f;->a:Lio/reactivex/BackpressureStrategy;

    invoke-static {v0, p1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, LP4/f;

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method
