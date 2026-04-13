.class public final Lorg/apache/hc/core5/http2/config/H2Setting;
.super Ljava/lang/Object;


# instance fields
.field private final param:Lorg/apache/hc/core5/http2/config/H2Param;

.field private final value:I


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http2/config/H2Param;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Setting parameter"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Setting value must be a non-negative value"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNegative(ILjava/lang/String;)I

    iput-object p1, p0, Lorg/apache/hc/core5/http2/config/H2Setting;->param:Lorg/apache/hc/core5/http2/config/H2Param;

    iput p2, p0, Lorg/apache/hc/core5/http2/config/H2Setting;->value:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/config/H2Setting;->param:Lorg/apache/hc/core5/http2/config/H2Param;

    iget v0, v0, Lorg/apache/hc/core5/http2/config/H2Param;->code:I

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/config/H2Setting;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/hc/core5/http2/config/H2Setting;->param:Lorg/apache/hc/core5/http2/config/H2Param;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/hc/core5/http2/config/H2Setting;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
