.class public final Lm5/q;
.super Le5/h;

# interfaces
.implements Ld5/l;


# static fields
.field public static final b:Lm5/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm5/q;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le5/h;-><init>(I)V

    sput-object v0, Lm5/q;->b:Lm5/q;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, LV4/g;

    instance-of v0, p1, Lm5/s;

    if-eqz v0, :cond_0

    check-cast p1, Lm5/s;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
