.class public Lorg/apache/hc/core5/http/MessageConstraintException;
.super Ljava/io/IOException;


# static fields
.field private static final serialVersionUID:J = 0x545694392b779bb7L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/hc/core5/http/HttpException;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
