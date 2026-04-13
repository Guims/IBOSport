.class public final Lorg/apache/hc/core5/http/message/StatusLine;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x21e85bd4afe13085L


# instance fields
.field private final protoVersion:Lorg/apache/hc/core5/http/ProtocolVersion;

.field private final reasonPhrase:Ljava/lang/String;

.field private final statusClass:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

.field private final statusCode:I


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/HttpResponse;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Response"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpMessage;->getVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpMessage;->getVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_1_1:Lorg/apache/hc/core5/http/HttpVersion;

    :goto_0
    iput-object v0, p0, Lorg/apache/hc/core5/http/message/StatusLine;->protoVersion:Lorg/apache/hc/core5/http/ProtocolVersion;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v0

    iput v0, p0, Lorg/apache/hc/core5/http/message/StatusLine;->statusCode:I

    invoke-static {v0}, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;->from(I)Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/http/message/StatusLine;->statusClass:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/message/StatusLine;->reasonPhrase:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/ProtocolVersion;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Status code"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNegative(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/apache/hc/core5/http/message/StatusLine;->statusCode:I

    invoke-static {p2}, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;->from(I)Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/hc/core5/http/message/StatusLine;->statusClass:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_1_1:Lorg/apache/hc/core5/http/HttpVersion;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/core5/http/message/StatusLine;->protoVersion:Lorg/apache/hc/core5/http/ProtocolVersion;

    iput-object p3, p0, Lorg/apache/hc/core5/http/message/StatusLine;->reasonPhrase:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/StatusLine;->protoVersion:Lorg/apache/hc/core5/http/ProtocolVersion;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/StatusLine;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusClass()Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/StatusLine;->statusClass:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http/message/StatusLine;->statusCode:I

    return v0
.end method

.method public isClientError()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/message/StatusLine;->getStatusClass()Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;->CLIENT_ERROR:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isError()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/message/StatusLine;->isClientError()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/message/StatusLine;->isServerError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isInformational()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/message/StatusLine;->getStatusClass()Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;->INFORMATIONAL:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRedirection()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/message/StatusLine;->getStatusClass()Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;->REDIRECTION:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isServerError()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/message/StatusLine;->getStatusClass()Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;->SERVER_ERROR:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSuccessful()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/message/StatusLine;->getStatusClass()Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;->SUCCESSFUL:Lorg/apache/hc/core5/http/message/StatusLine$StatusClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/hc/core5/http/message/StatusLine;->protoVersion:Lorg/apache/hc/core5/http/ProtocolVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/hc/core5/http/message/StatusLine;->statusCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/http/message/StatusLine;->reasonPhrase:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
