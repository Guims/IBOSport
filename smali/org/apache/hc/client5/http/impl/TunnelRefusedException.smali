.class public Lorg/apache/hc/client5/http/impl/TunnelRefusedException;
.super Lorg/apache/hc/core5/http/HttpException;


# static fields
.field private static final serialVersionUID:J = -0x77ff549cf91bbbabL


# instance fields
.field private final responseMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/HttpException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/TunnelRefusedException;->responseMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/TunnelRefusedException;->responseMessage:Ljava/lang/String;

    return-object v0
.end method
