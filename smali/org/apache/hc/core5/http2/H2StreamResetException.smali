.class public Lorg/apache/hc/core5/http2/H2StreamResetException;
.super Lorg/apache/hc/core5/http/HttpStreamResetException;


# static fields
.field private static final serialVersionUID:J = 0x3b6927ff67a2d72dL


# instance fields
.field private final code:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/apache/hc/core5/http/HttpStreamResetException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lorg/apache/hc/core5/http2/H2StreamResetException;->code:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/apache/hc/core5/http/HttpStreamResetException;-><init>(Ljava/lang/String;)V

    const-string p2, "H2 Error code"

    invoke-static {p1, p2}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/H2Error;->getCode()I

    move-result p1

    iput p1, p0, Lorg/apache/hc/core5/http2/H2StreamResetException;->code:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/H2StreamResetException;->code:I

    return v0
.end method
