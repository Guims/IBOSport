.class public final synthetic LB4/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, LB4/i;->a:I

    iput-object p1, p0, LB4/i;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, LB4/i;->a:I

    iget-object v1, p0, LB4/i;->b:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lorg/apache/hc/core5/http/NameValuePair;

    invoke-static {v1, p1}, Lorg/apache/hc/core5/net/URIBuilder;->a(Ljava/lang/String;Lorg/apache/hc/core5/http/NameValuePair;)Z

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Lorg/apache/hc/core5/http/NameValuePair;

    invoke-static {v1, p1}, Lorg/apache/hc/core5/net/URIBuilder;->c(Ljava/lang/String;Lorg/apache/hc/core5/http/NameValuePair;)Z

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, Lorg/apache/hc/core5/http/NameValuePair;

    invoke-static {v1, p1}, Lorg/apache/hc/core5/net/URIBuilder;->b(Ljava/lang/String;Lorg/apache/hc/core5/http/NameValuePair;)Z

    move-result p1

    return p1

    :pswitch_2
    check-cast p1, Lib/player/models/ResumeModel;

    sget v0, Lib/player/pages/series/SeriesPlayerActivity;->V0:I

    invoke-virtual {p1}, Lib/player/models/ResumeModel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_3
    check-cast p1, Lib/player/models/CategoryModel;

    sget-object v0, LB4/s;->v1:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lib/player/models/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
