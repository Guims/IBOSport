.class public final synthetic Lorg/apache/hc/client5/http/ssl/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lorg/apache/hc/client5/http/ssl/c;->a:I

    iput-object p2, p0, Lorg/apache/hc/client5/http/ssl/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/hc/client5/http/ssl/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/ssl/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-static {v0}, Lorg/apache/hc/core5/util/ReflectionUtils;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/ssl/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/hc/client5/http/ssl/HttpsSupport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
