.class public final Lorg/apache/hc/core5/pool/DefaultDisposalCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/pool/DisposalCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/hc/core5/http/SocketModalCloseable;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/pool/DisposalCallback<",
        "TT;>;"
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# static fields
.field private static final DEFAULT_CLOSE_TIMEOUT:Lorg/apache/hc/core5/util/Timeout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Timeout;->ofSeconds(J)Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/pool/DefaultDisposalCallback;->DEFAULT_CLOSE_TIMEOUT:Lorg/apache/hc/core5/util/Timeout;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/hc/core5/http/SocketModalCloseable;Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 2

    invoke-interface {p1}, Lorg/apache/hc/core5/http/SocketModalCloseable;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/hc/core5/util/TimeValue;->ZERO_MILLISECONDS:Lorg/apache/hc/core5/util/TimeValue;

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/util/TimeValue;->compareTo(Lorg/apache/hc/core5/util/TimeValue;)I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lorg/apache/hc/core5/pool/DefaultDisposalCallback;->DEFAULT_CLOSE_TIMEOUT:Lorg/apache/hc/core5/util/Timeout;

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/util/TimeValue;->compareTo(Lorg/apache/hc/core5/util/TimeValue;)I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    sget-object v0, Lorg/apache/hc/core5/pool/DefaultDisposalCallback;->DEFAULT_CLOSE_TIMEOUT:Lorg/apache/hc/core5/util/Timeout;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/SocketModalCloseable;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    :cond_1
    invoke-interface {p1, p2}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public bridge synthetic execute(Lorg/apache/hc/core5/io/ModalCloseable;Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/http/SocketModalCloseable;

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/pool/DefaultDisposalCallback;->execute(Lorg/apache/hc/core5/http/SocketModalCloseable;Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method
