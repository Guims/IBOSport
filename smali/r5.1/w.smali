.class public final Lr5/w;
.super Le5/h;

# interfaces
.implements Ld5/p;


# static fields
.field public static final q:Lr5/w;

.field public static final r:Lr5/w;

.field public static final s:Lr5/w;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lr5/w;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr5/w;-><init>(II)V

    sput-object v0, Lr5/w;->q:Lr5/w;

    new-instance v0, Lr5/w;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lr5/w;-><init>(II)V

    sput-object v0, Lr5/w;->r:Lr5/w;

    new-instance v0, Lr5/w;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lr5/w;-><init>(II)V

    sput-object v0, Lr5/w;->s:Lr5/w;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lr5/w;->b:I

    invoke-direct {p0, p1}, Le5/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lr5/w;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lr5/y;

    check-cast p2, LV4/g;

    return-object p1

    :pswitch_0
    check-cast p1, Lm5/h0;

    check-cast p2, LV4/g;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lm5/h0;

    if-eqz p1, :cond_1

    move-object p1, p2

    check-cast p1, Lm5/h0;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1

    :pswitch_1
    check-cast p2, LV4/g;

    instance-of v0, p2, Lm5/h0;

    if-eqz v0, :cond_5

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_3
    move p1, v0

    :goto_2
    if-nez p1, :cond_4

    move-object p1, p2

    goto :goto_3

    :cond_4
    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_5
    :goto_3
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
