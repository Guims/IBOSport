.class public Lorg/apache/hc/client5/http/entity/mime/FormBodyPart;
.super Lorg/apache/hc/client5/http/entity/mime/MultipartPart;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/hc/client5/http/entity/mime/ContentBody;Lorg/apache/hc/client5/http/entity/mime/Header;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lorg/apache/hc/client5/http/entity/mime/MultipartPart;-><init>(Lorg/apache/hc/client5/http/entity/mime/ContentBody;Lorg/apache/hc/client5/http/entity/mime/Header;)V

    const-string p3, "Name"

    invoke-static {p1, p3}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p3, "Body"

    invoke-static {p2, p3}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPart;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Field name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-super {p0, p1, p2}, Lorg/apache/hc/client5/http/entity/mime/MultipartPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPart;->name:Ljava/lang/String;

    return-object v0
.end method
