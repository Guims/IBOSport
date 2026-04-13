.class public abstract Lio/realm/O;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/M;


# static fields
.field static final MSG_DELETED_OBJECT:Ljava/lang/String; = "the object is already deleted."

.field static final MSG_DYNAMIC_OBJECT:Ljava/lang/String; = "the object is an instance of DynamicRealmObject. Use DynamicRealmObject.getDynamicRealm() instead."

.field static final MSG_NULL_OBJECT:Ljava/lang/String; = "\'model\' is null."


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChangeListener(Lio/realm/M;Lio/realm/H;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/M;",
            ">(TE;",
            "Lio/realm/H;",
            ")V"
        }
    .end annotation

    new-instance v0, Lio/realm/u;

    invoke-direct {v0, p1}, Lio/realm/u;-><init>(Lio/realm/H;)V

    invoke-static {p0, v0}, Lio/realm/O;->addChangeListener(Lio/realm/M;Lio/realm/P;)V

    return-void
.end method

.method public static addChangeListener(Lio/realm/M;Lio/realm/P;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/M;",
            ">(TE;",
            "Lio/realm/P;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    instance-of v0, p0, Lio/realm/internal/y;

    if-eqz v0, :cond_3

    check-cast p0, Lio/realm/internal/y;

    invoke-interface {p0}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v0

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    iget-object v0, v0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/a;

    const-string v1, "Listeners cannot be used on current thread."

    check-cast v0, LB0/i;

    invoke-virtual {v0, v1}, LB0/i;->b(Ljava/lang/String;)V

    invoke-interface {p0}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object p0

    iget-object v0, p0, Lio/realm/v;->c:Lio/realm/internal/A;

    instance-of v0, v0, Lio/realm/internal/UncheckedRow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/v;->e:Lio/realm/d;

    iget-object v0, v0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v0}, Lio/realm/internal/A;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/realm/v;->d:Lio/realm/internal/OsObject;

    if-nez v0, :cond_1

    new-instance v0, Lio/realm/internal/OsObject;

    iget-object v1, p0, Lio/realm/v;->e:Lio/realm/d;

    iget-object v1, v1, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    iget-object v2, p0, Lio/realm/v;->c:Lio/realm/internal/A;

    check-cast v2, Lio/realm/internal/UncheckedRow;

    invoke-direct {v0, v1, v2}, Lio/realm/internal/OsObject;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/UncheckedRow;)V

    iput-object v0, p0, Lio/realm/v;->d:Lio/realm/internal/OsObject;

    iget-object v1, p0, Lio/realm/v;->g:Lio/realm/internal/o;

    invoke-virtual {v0, v1}, Lio/realm/internal/OsObject;->setObserverPairs(Lio/realm/internal/o;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/v;->g:Lio/realm/internal/o;

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/realm/v;->d:Lio/realm/internal/OsObject;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lio/realm/v;->a:Lio/realm/O;

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/OsObject;->addListener(Lio/realm/M;Lio/realm/P;)V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot add listener from this unmanaged RealmObject (created outside of Realm)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Listener should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Object should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static asChangesetObservable(Lio/realm/M;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/M;",
            ">(TE;)",
            "Lio/reactivex/Observable<",
            "LP4/a;",
            ">;"
        }
    .end annotation

    instance-of v0, p0, Lio/realm/internal/y;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lio/realm/internal/y;

    invoke-interface {v0}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v1

    iget-object v1, v1, Lio/realm/v;->e:Lio/realm/d;

    instance-of v2, v1, Lio/realm/y;

    const-string v3, "RxJava seems to be missing from the classpath. Remember to add it as an implementation dependency. See https://github.com/realm/realm-java/tree/master/examples/rxJavaExample for more details."

    if-eqz v2, :cond_1

    iget-object p0, v1, Lio/realm/d;->r:Lio/realm/J;

    iget-object p0, p0, Lio/realm/J;->h:LP4/g;

    if-eqz p0, :cond_0

    check-cast v1, Lio/realm/y;

    check-cast p0, LP4/f;

    invoke-virtual {p0, v1, v0}, LP4/f;->b(Lio/realm/y;Lio/realm/internal/y;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    instance-of v0, v1, Lio/realm/f;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lio/realm/f;

    check-cast p0, Lio/realm/i;

    iget-object v1, v1, Lio/realm/d;->r:Lio/realm/J;

    iget-object v1, v1, Lio/realm/J;->h:LP4/g;

    if-eqz v1, :cond_2

    check-cast v1, LP4/f;

    invoke-virtual {v1, v0, p0}, LP4/f;->a(Lio/realm/f;Lio/realm/i;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot create Observables from unmanaged RealmObjects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static asFlowable(Lio/realm/M;)Lio/reactivex/Flowable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/M;",
            ">(TE;)",
            "Lio/reactivex/Flowable<",
            "TE;>;"
        }
    .end annotation

    instance-of v0, p0, Lio/realm/internal/y;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lio/realm/internal/y;

    invoke-interface {v0}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v1

    iget-object v1, v1, Lio/realm/v;->e:Lio/realm/d;

    instance-of v2, v1, Lio/realm/y;

    const-string v3, "RxJava seems to be missing from the classpath. Remember to add it as an implementation dependency. See https://github.com/realm/realm-java/tree/master/examples/rxJavaExample for more details."

    if-eqz v2, :cond_1

    iget-object p0, v1, Lio/realm/d;->r:Lio/realm/J;

    iget-object p0, p0, Lio/realm/J;->h:LP4/g;

    if-eqz p0, :cond_0

    check-cast v1, Lio/realm/y;

    check-cast p0, LP4/f;

    invoke-virtual {p0, v1, v0}, LP4/f;->d(Lio/realm/y;Lio/realm/internal/y;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    instance-of v0, v1, Lio/realm/f;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lio/realm/f;

    check-cast p0, Lio/realm/i;

    iget-object v1, v1, Lio/realm/d;->r:Lio/realm/J;

    iget-object v1, v1, Lio/realm/J;->h:LP4/g;

    if-eqz v1, :cond_2

    check-cast v1, LP4/f;

    invoke-virtual {v1, v0, p0}, LP4/f;->c(Lio/realm/f;Lio/realm/i;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot create Observables from unmanaged RealmObjects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static deleteFromRealm(Lio/realm/M;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/M;",
            ">(TE;)V"
        }
    .end annotation

    instance-of v0, p0, Lio/realm/internal/y;

    if-eqz v0, :cond_2

    check-cast p0, Lio/realm/internal/y;

    invoke-interface {p0}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v0

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v0

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v0

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    invoke-interface {p0}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v0

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-interface {v0}, Lio/realm/internal/A;->d()Lio/realm/internal/Table;

    move-result-object v1

    invoke-interface {v0}, Lio/realm/internal/A;->F()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/Table;->m(J)V

    invoke-interface {p0}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object p0

    sget-object v0, Lio/realm/internal/f;->b:Lio/realm/internal/f;

    iput-object v0, p0, Lio/realm/v;->c:Lio/realm/internal/A;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Object malformed: missing Realm. Make sure to instantiate RealmObjects with Realm.createObject()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Object malformed: missing object in Realm. Make sure to instantiate RealmObjects with Realm.createObject()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Object not managed by Realm, so it cannot be removed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static freeze(Lio/realm/M;)Lio/realm/M;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/M;",
            ">(TE;)TE;"
        }
    .end annotation

    instance-of v0, p0, Lio/realm/internal/y;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lio/realm/internal/y;

    invoke-interface {v0}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v1

    iget-object v1, v1, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v1}, Lio/realm/d;->y()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lio/realm/d;->h()Lio/realm/d;

    move-result-object v2

    :goto_0
    invoke-interface {v0}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v0

    iget-object v0, v0, Lio/realm/v;->c:Lio/realm/internal/A;

    iget-object v3, v2, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-interface {v0, v3}, Lio/realm/internal/A;->E(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/A;

    move-result-object v0

    instance-of v3, v2, Lio/realm/f;

    if-eqz v3, :cond_1

    new-instance p0, Lio/realm/i;

    invoke-direct {p0, v2, v0}, Lio/realm/i;-><init>(Lio/realm/d;Lio/realm/internal/A;)V

    return-object p0

    :cond_1
    instance-of v3, v2, Lio/realm/y;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    iget-object v3, v2, Lio/realm/d;->r:Lio/realm/J;

    iget-object v3, v3, Lio/realm/J;->g:Lio/realm/internal/z;

    invoke-virtual {v1}, Lio/realm/d;->x()Lio/realm/k;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v1

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v3, p0, v2, v0, v1}, Lio/realm/internal/z;->k(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/A;Lio/realm/internal/c;)Lio/realm/M;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown Realm type: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "It is only possible to freeze valid managed Realm objects."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getRealm(Lio/realm/M;)Lio/realm/y;
    .locals 1

    if-eqz p0, :cond_3

    instance-of v0, p0, Lio/realm/i;

    if-nez v0, :cond_2

    instance-of v0, p0, Lio/realm/internal/y;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    move-object v0, p0

    check-cast v0, Lio/realm/internal/y;

    invoke-interface {v0}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v0

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    invoke-static {p0}, Lio/realm/O;->isValid(Lio/realm/M;)Z

    move-result p0

    if-eqz p0, :cond_1

    check-cast v0, Lio/realm/y;

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "the object is already deleted."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "the object is an instance of DynamicRealmObject. Use DynamicRealmObject.getDynamicRealm() instead."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'model\' is null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isFrozen(Lio/realm/M;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/M;",
            ">(TE;)Z"
        }
    .end annotation

    instance-of v0, p0, Lio/realm/internal/y;

    if-eqz v0, :cond_0

    check-cast p0, Lio/realm/internal/y;

    invoke-interface {p0}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object p0

    iget-object p0, p0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {p0}, Lio/realm/d;->y()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isLoaded(Lio/realm/M;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/M;",
            ">(TE;)Z"
        }
    .end annotation

    instance-of v0, p0, Lio/realm/internal/y;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p0, Lio/realm/internal/y;

    invoke-interface {p0}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v0

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->b()V

    invoke-interface {p0}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object p0

    iget-object p0, p0, Lio/realm/v;->c:Lio/realm/internal/A;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return v1
.end method

.method public static isManaged(Lio/realm/M;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/M;",
            ">(TE;)Z"
        }
    .end annotation

    instance-of p0, p0, Lio/realm/internal/y;

    return p0
.end method

.method public static isValid(Lio/realm/M;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/M;",
            ">(TE;)Z"
        }
    .end annotation

    instance-of v0, p0, Lio/realm/internal/y;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p0, Lio/realm/internal/y;

    invoke-interface {p0}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object p0

    iget-object p0, p0, Lio/realm/v;->c:Lio/realm/internal/A;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lio/realm/internal/A;->isValid()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_0
    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static load(Lio/realm/M;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/M;",
            ">(TE;)Z"
        }
    .end annotation

    invoke-static {p0}, Lio/realm/O;->isLoaded(Lio/realm/M;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Lio/realm/internal/y;

    if-eqz v0, :cond_1

    check-cast p0, Lio/realm/internal/y;

    invoke-interface {p0}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static removeAllChangeListeners(Lio/realm/M;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/M;",
            ">(TE;)V"
        }
    .end annotation

    instance-of v0, p0, Lio/realm/internal/y;

    if-eqz v0, :cond_2

    check-cast p0, Lio/realm/internal/y;

    invoke-interface {p0}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v0

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lio/realm/d;->r:Lio/realm/J;

    iget-object v0, v0, Lio/realm/J;->c:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm."

    invoke-static {v1, v0}, Lio/realm/log/RealmLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p0}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object p0

    iget-object v0, p0, Lio/realm/v;->d:Lio/realm/internal/OsObject;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/realm/v;->a:Lio/realm/O;

    invoke-virtual {v0, p0}, Lio/realm/internal/OsObject;->removeListener(Lio/realm/M;)V

    return-void

    :cond_1
    iget-object p0, p0, Lio/realm/v;->g:Lio/realm/internal/o;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/internal/o;->b:Z

    iget-object p0, p0, Lio/realm/internal/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot remove listeners from this unmanaged RealmObject (created outside of Realm)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static removeChangeListener(Lio/realm/M;Lio/realm/H;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/M;",
            ">(TE;",
            "Lio/realm/H;",
            ")V"
        }
    .end annotation

    new-instance v0, Lio/realm/u;

    invoke-direct {v0, p1}, Lio/realm/u;-><init>(Lio/realm/H;)V

    invoke-static {p0, v0}, Lio/realm/O;->removeChangeListener(Lio/realm/M;Lio/realm/P;)V

    return-void
.end method

.method public static removeChangeListener(Lio/realm/M;Lio/realm/P;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/M;",
            ">(TE;",
            "Lio/realm/P;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    instance-of v0, p0, Lio/realm/internal/y;

    if-eqz v0, :cond_2

    check-cast p0, Lio/realm/internal/y;

    invoke-interface {p0}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object v0

    iget-object v0, v0, Lio/realm/v;->e:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lio/realm/d;->r:Lio/realm/J;

    iget-object v0, v0, Lio/realm/J;->c:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm."

    invoke-static {v1, v0}, Lio/realm/log/RealmLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p0}, Lio/realm/internal/y;->b()Lio/realm/v;

    move-result-object p0

    iget-object v0, p0, Lio/realm/v;->a:Lio/realm/O;

    iget-object v1, p0, Lio/realm/v;->d:Lio/realm/internal/OsObject;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0, p1}, Lio/realm/internal/OsObject;->removeListener(Lio/realm/M;Lio/realm/P;)V

    return-void

    :cond_1
    iget-object p0, p0, Lio/realm/v;->g:Lio/realm/internal/o;

    invoke-virtual {p0, v0, p1}, Lio/realm/internal/o;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot remove listener from this unmanaged RealmObject (created outside of Realm)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Listener should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Object should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addChangeListener(Lio/realm/H;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/M;",
            ">(",
            "Lio/realm/H;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1}, Lio/realm/O;->addChangeListener(Lio/realm/M;Lio/realm/H;)V

    return-void
.end method

.method public final addChangeListener(Lio/realm/P;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/M;",
            ">(",
            "Lio/realm/P;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1}, Lio/realm/O;->addChangeListener(Lio/realm/M;Lio/realm/P;)V

    return-void
.end method

.method public final asChangesetObservable()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/O;",
            ">()",
            "Lio/reactivex/Observable<",
            "LP4/a;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lio/realm/O;->asChangesetObservable(Lio/realm/M;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final asFlowable()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/O;",
            ">()",
            "Lio/reactivex/Flowable<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lio/realm/O;->asFlowable(Lio/realm/M;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public final deleteFromRealm()V
    .locals 0

    invoke-static {p0}, Lio/realm/O;->deleteFromRealm(Lio/realm/M;)V

    return-void
.end method

.method public final freeze()Lio/realm/M;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/M;",
            ">()TE;"
        }
    .end annotation

    invoke-static {p0}, Lio/realm/O;->freeze(Lio/realm/M;)Lio/realm/M;

    move-result-object v0

    return-object v0
.end method

.method public getRealm()Lio/realm/y;
    .locals 1

    invoke-static {p0}, Lio/realm/O;->getRealm(Lio/realm/M;)Lio/realm/y;

    move-result-object v0

    return-object v0
.end method

.method public final isFrozen()Z
    .locals 1

    invoke-static {p0}, Lio/realm/O;->isFrozen(Lio/realm/M;)Z

    move-result v0

    return v0
.end method

.method public final isLoaded()Z
    .locals 1

    invoke-static {p0}, Lio/realm/O;->isLoaded(Lio/realm/M;)Z

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .locals 1

    invoke-static {p0}, Lio/realm/O;->isManaged(Lio/realm/M;)Z

    move-result v0

    return v0
.end method

.method public final isValid()Z
    .locals 1

    invoke-static {p0}, Lio/realm/O;->isValid(Lio/realm/M;)Z

    move-result v0

    return v0
.end method

.method public final load()Z
    .locals 1

    invoke-static {p0}, Lio/realm/O;->load(Lio/realm/M;)Z

    move-result v0

    return v0
.end method

.method public final removeAllChangeListeners()V
    .locals 0

    invoke-static {p0}, Lio/realm/O;->removeAllChangeListeners(Lio/realm/M;)V

    return-void
.end method

.method public final removeChangeListener(Lio/realm/H;)V
    .locals 0

    invoke-static {p0, p1}, Lio/realm/O;->removeChangeListener(Lio/realm/M;Lio/realm/H;)V

    return-void
.end method

.method public final removeChangeListener(Lio/realm/P;)V
    .locals 0

    invoke-static {p0, p1}, Lio/realm/O;->removeChangeListener(Lio/realm/M;Lio/realm/P;)V

    return-void
.end method
