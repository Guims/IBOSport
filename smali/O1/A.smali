.class public final LO1/A;
.super Ljava/lang/Object;

# interfaces
.implements LO1/s;


# static fields
.field public static final b:LO1/A;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LO1/A;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LO1/A;-><init>(I)V

    sput-object v0, LO1/A;->b:LO1/A;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LO1/A;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LO1/x;)LO1/r;
    .locals 3

    iget v0, p0, LO1/A;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LO1/E;

    const-class v1, LO1/h;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, LO1/x;->b(Ljava/lang/Class;Ljava/lang/Class;)LO1/r;

    move-result-object p1

    invoke-direct {v0, p1}, LO1/E;-><init>(LO1/r;)V

    return-object v0

    :pswitch_0
    new-instance v0, LO1/z;

    const-class v1, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, LO1/x;->b(Ljava/lang/Class;Ljava/lang/Class;)LO1/r;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LO1/z;-><init>(LO1/r;I)V

    return-object v0

    :pswitch_1
    new-instance v0, LO1/z;

    const-class v1, Landroid/net/Uri;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, v2}, LO1/x;->b(Ljava/lang/Class;Ljava/lang/Class;)LO1/r;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LO1/z;-><init>(LO1/r;I)V

    return-object v0

    :pswitch_2
    new-instance v0, LO1/z;

    const-class v1, Landroid/net/Uri;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1, v1, v2}, LO1/x;->b(Ljava/lang/Class;Ljava/lang/Class;)LO1/r;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LO1/z;-><init>(LO1/r;I)V

    return-object v0

    :pswitch_3
    new-instance p1, LO1/B;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, LO1/B;-><init>(I)V

    return-object p1

    :pswitch_4
    new-instance p1, LH1/c;

    new-instance v0, LO1/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LO1/c;-><init>(I)V

    invoke-direct {p1, v1, v0}, LH1/c;-><init>(ILjava/lang/Object;)V

    return-object p1

    :pswitch_5
    new-instance p1, LH1/c;

    new-instance v0, LO1/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LO1/c;-><init>(I)V

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, LH1/c;-><init>(ILjava/lang/Object;)V

    return-object p1

    :pswitch_6
    sget-object p1, LO1/B;->b:LO1/B;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
