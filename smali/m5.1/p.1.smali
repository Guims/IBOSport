.class public final Lm5/p;
.super Le5/h;

# interfaces
.implements Ld5/p;


# static fields
.field public static final q:Lm5/p;

.field public static final r:Lm5/p;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lm5/p;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lm5/p;-><init>(II)V

    sput-object v0, Lm5/p;->q:Lm5/p;

    new-instance v0, Lm5/p;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lm5/p;-><init>(II)V

    sput-object v0, Lm5/p;->r:Lm5/p;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lm5/p;->b:I

    invoke-direct {p0, p1}, Le5/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lm5/p;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LV4/i;

    check-cast p2, LV4/g;

    invoke-interface {p1, p2}, LV4/i;->s(LV4/i;)LV4/i;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p2, LV4/g;

    return-object p1

    :pswitch_1
    check-cast p1, LV4/i;

    check-cast p2, LV4/g;

    invoke-interface {p1, p2}, LV4/i;->s(LV4/i;)LV4/i;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
