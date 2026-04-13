.class public final synthetic Lq5/l;
.super Le5/f;

# interfaces
.implements Ld5/q;


# static fields
.field public static final x:Lq5/l;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lq5/l;

    const-string v4, "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, Lp5/c;

    const-string v3, "emit"

    invoke-direct/range {v0 .. v5}, Le5/f;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lq5/l;->x:Lq5/l;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lp5/c;

    check-cast p3, LV4/d;

    invoke-interface {p1, p2, p3}, Lp5/c;->a(Ljava/lang/Object;LV4/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
