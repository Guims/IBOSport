.class public Lorg/apache/hc/client5/http/entity/mime/MultipartPart;
.super Ljava/lang/Object;


# instance fields
.field private final body:Lorg/apache/hc/client5/http/entity/mime/ContentBody;

.field private final header:Lorg/apache/hc/client5/http/entity/mime/Header;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/entity/mime/ContentBody;Lorg/apache/hc/client5/http/entity/mime/Header;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartPart;->body:Lorg/apache/hc/client5/http/entity/mime/ContentBody;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/apache/hc/client5/http/entity/mime/Header;

    invoke-direct {p2}, Lorg/apache/hc/client5/http/entity/mime/Header;-><init>()V

    :goto_0
    iput-object p2, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartPart;->header:Lorg/apache/hc/client5/http/entity/mime/Header;

    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/entity/mime/MimeField;

    invoke-direct {v0, p1, p2}, Lorg/apache/hc/client5/http/entity/mime/MimeField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/entity/mime/MultipartPart;->addField(Lorg/apache/hc/client5/http/entity/mime/MimeField;)V

    return-void
.end method

.method public addField(Lorg/apache/hc/client5/http/entity/mime/MimeField;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartPart;->header:Lorg/apache/hc/client5/http/entity/mime/Header;

    invoke-virtual {v0, p1}, Lorg/apache/hc/client5/http/entity/mime/Header;->addField(Lorg/apache/hc/client5/http/entity/mime/MimeField;)V

    return-void
.end method

.method public getBody()Lorg/apache/hc/client5/http/entity/mime/ContentBody;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartPart;->body:Lorg/apache/hc/client5/http/entity/mime/ContentBody;

    return-object v0
.end method

.method public getHeader()Lorg/apache/hc/client5/http/entity/mime/Header;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartPart;->header:Lorg/apache/hc/client5/http/entity/mime/Header;

    return-object v0
.end method
