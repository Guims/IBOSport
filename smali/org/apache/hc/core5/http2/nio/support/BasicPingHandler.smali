.class public Lorg/apache/hc/core5/http2/nio/support/BasicPingHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http2/nio/AsyncPingHandler;


# static fields
.field private static final PING_MESSAGE:[B


# instance fields
.field private final callback:Lorg/apache/hc/core5/function/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/hc/core5/http2/nio/support/BasicPingHandler;->PING_MESSAGE:[B

    return-void

    :array_0
    .array-data 1
        0x2at
        0x2at
        0x70t
        0x69t
        0x6et
        0x67t
        0x2at
        0x2at
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/hc/core5/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/function/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Callback"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/function/Callback;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/nio/support/BasicPingHandler;->callback:Lorg/apache/hc/core5/function/Callback;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/nio/support/BasicPingHandler;->callback:Lorg/apache/hc/core5/function/Callback;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/function/Callback;->execute(Ljava/lang/Object;)V

    return-void
.end method

.method public consumeResponse(Ljava/nio/ByteBuffer;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lorg/apache/hc/core5/http2/nio/support/BasicPingHandler;->PING_MESSAGE:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_2

    aget-byte v2, v2, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/apache/hc/core5/http2/nio/support/BasicPingHandler;->callback:Lorg/apache/hc/core5/function/Callback;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/function/Callback;->execute(Ljava/lang/Object;)V

    return-void
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 1

    iget-object p1, p0, Lorg/apache/hc/core5/http2/nio/support/BasicPingHandler;->callback:Lorg/apache/hc/core5/function/Callback;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/function/Callback;->execute(Ljava/lang/Object;)V

    return-void
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http2/nio/support/BasicPingHandler;->PING_MESSAGE:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
