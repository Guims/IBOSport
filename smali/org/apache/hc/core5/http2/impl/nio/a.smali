.class public final synthetic Lorg/apache/hc/core5/http2/impl/nio/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/concurrent/Cancellable;


# instance fields
.field public final synthetic b:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/a;->b:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    return-void
.end method


# virtual methods
.method public final cancel()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/a;->b:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->abort()Z

    move-result v0

    return v0
.end method
