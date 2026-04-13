.class public final Lorg/apache/hc/client5/http/impl/Operations;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/Operations$CompletedFuture;
    }
.end annotation


# static fields
.field private static final NOOP_CANCELLABLE:Lorg/apache/hc/core5/concurrent/Cancellable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LM5/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/Operations;->NOOP_CANCELLABLE:Lorg/apache/hc/core5/concurrent/Cancellable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/Future;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/client5/http/impl/Operations;->lambda$cancellable$1(Ljava/util/concurrent/Future;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b()Z
    .locals 1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/Operations;->lambda$static$0()Z

    move-result v0

    return v0
.end method

.method public static cancellable(Ljava/util/concurrent/Future;)Lorg/apache/hc/core5/concurrent/Cancellable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "Lorg/apache/hc/core5/concurrent/Cancellable;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/hc/client5/http/impl/Operations;->NOOP_CANCELLABLE:Lorg/apache/hc/core5/concurrent/Cancellable;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/apache/hc/core5/concurrent/Cancellable;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/apache/hc/core5/concurrent/Cancellable;

    return-object p0

    :cond_1
    new-instance v0, LM5/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LM5/b;-><init>(Ljava/util/concurrent/Future;I)V

    return-object v0
.end method

.method private static synthetic lambda$cancellable$1(Ljava/util/concurrent/Future;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static nonCancellable()Lorg/apache/hc/core5/concurrent/Cancellable;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/Operations;->NOOP_CANCELLABLE:Lorg/apache/hc/core5/concurrent/Cancellable;

    return-object v0
.end method
