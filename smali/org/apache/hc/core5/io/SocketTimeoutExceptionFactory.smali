.class public final Lorg/apache/hc/core5/io/SocketTimeoutExceptionFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lorg/apache/hc/core5/util/Timeout;)Ljava/net/SocketTimeoutException;
    .locals 1

    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
