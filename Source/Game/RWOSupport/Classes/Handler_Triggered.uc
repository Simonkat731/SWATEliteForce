class Handler_Triggered extends Handler;

static final simulated function Dispatch(array<Handler> Handlers, Actor Owner, Actor Other)
{
    local int i;

    for (i=0; i<Handlers.length; ++i)
        Handler_Triggered(Handlers[i]).Handle(Owner, Other);
}

function simulated Handle(Actor Owner, Actor Other)
{
    DoReactions(Owner, Other);
}
