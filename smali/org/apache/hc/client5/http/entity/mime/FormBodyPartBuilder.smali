.class public Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;
.super Ljava/lang/Object;


# instance fields
.field private body:Lorg/apache/hc/client5/http/entity/mime/ContentBody;

.field private final header:Lorg/apache/hc/client5/http/entity/mime/Header;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/hc/client5/http/entity/mime/Header;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/entity/mime/Header;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;->header:Lorg/apache/hc/client5/http/entity/mime/Header;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/hc/client5/http/entity/mime/ContentBody;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;->body:Lorg/apache/hc/client5/http/entity/mime/ContentBody;

    return-void
.end method

.method public static create()Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Lorg/apache/hc/client5/http/entity/mime/ContentBody;)Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;-><init>(Ljava/lang/String;Lorg/apache/hc/client5/http/entity/mime/ContentBody;)V

    return-object v0
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;
    .locals 2

    const-string v0, "Field name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;->header:Lorg/apache/hc/client5/http/entity/mime/Header;

    new-instance v1, Lorg/apache/hc/client5/http/entity/mime/MimeField;

    invoke-direct {v1, p1, p2}, Lorg/apache/hc/client5/http/entity/mime/MimeField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/entity/mime/Header;->addField(Lorg/apache/hc/client5/http/entity/mime/MimeField;)V

    return-object p0
.end method

.method public addField(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/NameValuePair;",
            ">;)",
            "Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;"
        }
    .end annotation

    const-string v0, "Field name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;->header:Lorg/apache/hc/client5/http/entity/mime/Header;

    new-instance v1, Lorg/apache/hc/client5/http/entity/mime/MimeField;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/hc/client5/http/entity/mime/MimeField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/entity/mime/Header;->addField(Lorg/apache/hc/client5/http/entity/mime/MimeField;)V

    return-object p0
.end method

.method public build()Lorg/apache/hc/client5/http/entity/mime/FormBodyPart;
    .locals 6

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;->name:Ljava/lang/String;

    const-string v1, "Name"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;->body:Lorg/apache/hc/client5/http/entity/mime/ContentBody;

    const-string v1, "Content body"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/client5/http/entity/mime/Header;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/entity/mime/Header;-><init>()V

    iget-object v1, p0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;->header:Lorg/apache/hc/client5/http/entity/mime/Header;

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/entity/mime/Header;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/client5/http/entity/mime/MimeField;

    invoke-virtual {v0, v2}, Lorg/apache/hc/client5/http/entity/mime/Header;->addField(Lorg/apache/hc/client5/http/entity/mime/MimeField;)V

    goto :goto_0

    :cond_0
    const-string v1, "Content-Disposition"

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/entity/mime/Header;->getField(Ljava/lang/String;)Lorg/apache/hc/client5/http/entity/mime/MimeField;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    const-string v4, "name"

    iget-object v5, p0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;->body:Lorg/apache/hc/client5/http/entity/mime/ContentBody;

    invoke-interface {v3}, Lorg/apache/hc/client5/http/entity/mime/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Lorg/apache/hc/core5/http/message/BasicNameValuePair;

    iget-object v4, p0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;->body:Lorg/apache/hc/client5/http/entity/mime/ContentBody;

    invoke-interface {v4}, Lorg/apache/hc/client5/http/entity/mime/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v4

    const-string v5, "filename"

    invoke-direct {v3, v5, v4}, Lorg/apache/hc/core5/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v3, Lorg/apache/hc/client5/http/entity/mime/MimeField;

    const-string v4, "form-data"

    invoke-direct {v3, v1, v4, v2}, Lorg/apache/hc/client5/http/entity/mime/MimeField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lorg/apache/hc/client5/http/entity/mime/Header;->addField(Lorg/apache/hc/client5/http/entity/mime/MimeField;)V

    :cond_2
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/entity/mime/Header;->getField(Ljava/lang/String;)Lorg/apache/hc/client5/http/entity/mime/MimeField;

    move-result-object v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;->body:Lorg/apache/hc/client5/http/entity/mime/ContentBody;

    instance-of v3, v2, Lorg/apache/hc/client5/http/entity/mime/AbstractContentBody;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/apache/hc/client5/http/entity/mime/AbstractContentBody;

    invoke-virtual {v2}, Lorg/apache/hc/client5/http/entity/mime/AbstractContentBody;->getContentType()Lorg/apache/hc/core5/http/ContentType;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    new-instance v3, Lorg/apache/hc/client5/http/entity/mime/MimeField;

    invoke-virtual {v2}, Lorg/apache/hc/core5/http/ContentType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lorg/apache/hc/client5/http/entity/mime/MimeField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/apache/hc/client5/http/entity/mime/Header;->addField(Lorg/apache/hc/client5/http/entity/mime/MimeField;)V

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;->body:Lorg/apache/hc/client5/http/entity/mime/ContentBody;

    invoke-interface {v3}, Lorg/apache/hc/client5/http/entity/mime/ContentDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;->body:Lorg/apache/hc/client5/http/entity/mime/ContentBody;

    invoke-interface {v3}, Lorg/apache/hc/client5/http/entity/mime/ContentDescriptor;->getCharset()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v3, "; charset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;->body:Lorg/apache/hc/client5/http/entity/mime/ContentBody;

    invoke-interface {v3}, Lorg/apache/hc/client5/http/entity/mime/ContentDescriptor;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    new-instance v3, Lorg/apache/hc/client5/http/entity/mime/MimeField;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lorg/apache/hc/client5/http/entity/mime/MimeField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/apache/hc/client5/http/entity/mime/Header;->addField(Lorg/apache/hc/client5/http/entity/mime/MimeField;)V

    :cond_6
    :goto_2
    new-instance v1, Lorg/apache/hc/client5/http/entity/mime/FormBodyPart;

    iget-object v2, p0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;->body:Lorg/apache/hc/client5/http/entity/mime/ContentBody;

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/hc/client5/http/entity/mime/FormBodyPart;-><init>(Ljava/lang/String;Lorg/apache/hc/client5/http/entity/mime/ContentBody;Lorg/apache/hc/client5/http/entity/mime/Header;)V

    return-object v1
.end method

.method public removeFields(Ljava/lang/String;)Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;
    .locals 1

    const-string v0, "Field name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;->header:Lorg/apache/hc/client5/http/entity/mime/Header;

    invoke-virtual {v0, p1}, Lorg/apache/hc/client5/http/entity/mime/Header;->removeFields(Ljava/lang/String;)I

    return-object p0
.end method

.method public setBody(Lorg/apache/hc/client5/http/entity/mime/ContentBody;)Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;->body:Lorg/apache/hc/client5/http/entity/mime/ContentBody;

    return-object p0
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;
    .locals 2

    const-string v0, "Field name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;->header:Lorg/apache/hc/client5/http/entity/mime/Header;

    new-instance v1, Lorg/apache/hc/client5/http/entity/mime/MimeField;

    invoke-direct {v1, p1, p2}, Lorg/apache/hc/client5/http/entity/mime/MimeField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/entity/mime/Header;->setField(Lorg/apache/hc/client5/http/entity/mime/MimeField;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/entity/mime/FormBodyPartBuilder;->name:Ljava/lang/String;

    return-object p0
.end method
