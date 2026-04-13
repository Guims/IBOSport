.class public Lorg/apache/hc/client5/http/classic/methods/HttpDelete;
.super Lorg/apache/hc/client5/http/classic/methods/HttpUriRequestBase;


# static fields
.field public static final METHOD_NAME:Ljava/lang/String; = "DELETE"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/classic/methods/HttpDelete;-><init>(Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    const-string v0, "DELETE"

    invoke-direct {p0, v0, p1}, Lorg/apache/hc/client5/http/classic/methods/HttpUriRequestBase;-><init>(Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method
